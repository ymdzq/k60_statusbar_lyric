.class public abstract Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoUIModeBaseFragment.java"

# interfaces
.implements Lcom/android/settings/autouimode/SwitchCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;
    }
.end annotation


# instance fields
.field private mAllAppControlView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

.field private mAutouiView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGuideView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInitAppModeTask:Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;

.field private mInstallPacksgeReceiver:Landroid/content/BroadcastReceiver;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field protected mSearchActionMode:Lmiuix/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiuix/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/autouimode/AutoUIInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mTotalAppCount:I

.field private mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/autouimode/AutoUIInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoModeAdapter(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Lcom/android/settings/autouimode/AutoUIModeAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinearLayout(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchActionModeCallback(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Lmiuix/view/SearchActionMode$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionModeCallback:Lmiuix/view/SearchActionMode$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchTextWatcher(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/text/TextWatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTotalAppCount(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalAppCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshAppListInstalled(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->refreshAppListInstalled(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshAppListRemoved(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->refreshAppListRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshInitListUI(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->refreshInitListUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchModification(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->setSearchModification(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->updateAppList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchResult(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mInstallPacksgeReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionModeCallback:Lmiuix/view/SearchActionMode$Callback;

    .line 288
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    .line 120
    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    return-void
.end method

.method private initAutoUIModeFragment()V
    .locals 2

    .line 206
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;

    invoke-direct {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mInitAppModeTask:Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;

    .line 207
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static isMiPadDevice()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    .line 397
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    .line 396
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private refreshAppListInstalled(Ljava/lang/String;)V
    .locals 4

    .line 358
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 360
    new-instance v1, Lcom/android/settings/autouimode/AutoUIInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v3, p1, v2}, Lcom/android/settings/autouimode/AutoUIInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->initAutoUIModeFragment()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->updateAppList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AutoUIModeBaseFragment"

    const-string/jumbo p1, "refresh app add failed"

    .line 366
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private refreshAppListRemoved(Ljava/lang/String;)V
    .locals 4

    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 374
    new-instance v1, Lcom/android/settings/autouimode/AutoUIInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v3, p1, v2}, Lcom/android/settings/autouimode/AutoUIInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 377
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->updateAppList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refresh app removed failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoUIModeBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private refreshInitListUI()V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->autoui_search_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->refreshAppList(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 250
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->autoui_mode_no_support_apps:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setSearchModification(Ljava/lang/String;Z)V
    .locals 2

    .line 386
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/autouimode/AutoUIInfo;

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/android/settings/autouimode/AutoUIInfo;->getmPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0, p2}, Lcom/android/settings/autouimode/AutoUIInfo;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateAppList()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mGuideView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->isSearchMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/autouimode/AutoUIInfo;

    move v3, v2

    .line 342
    :goto_2
    iget-object v4, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/autouimode/AutoUIInfo;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1, v4}, Lcom/android/settings/autouimode/AutoUIInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/autouimode/AutoUIInfo;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->refreshAppList(Ljava/util/List;)V

    goto :goto_4

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->refreshAppList(Ljava/util/List;)V

    :goto_4
    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/autouimode/AutoUIInfo;

    .line 328
    invoke-virtual {v1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchResult:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->setSearchInput(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->updateAppList()V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public abstract getAutoUIController()Lcom/android/settings/special/AutoUIModeGuideController;
.end method

.method public isSearchMode()Z
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChangedListener(Ljava/lang/String;Z)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 132
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isChecked"

    .line 133
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 146
    sget p2, Lcom/android/settings/R$layout;->autoui_mode:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mContext:Landroid/content/Context;

    .line 148
    sget p2, Lcom/android/settings/R$id;->linear_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 149
    sget p2, Lcom/android/settings/R$id;->application_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAllAppControlView:Lmiuix/recyclerview/widget/RecyclerView;

    const p2, 0x1020004    # @android:id/empty

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mEmptyView:Landroid/widget/TextView;

    .line 151
    sget p2, Lcom/android/settings/R$id;->autoui_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mGuideView:Landroid/view/View;

    .line 152
    sget p2, Lcom/android/settings/R$id;->search_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchView:Landroid/view/View;

    const p3, 0x1020009    # @android:id/input

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchInputView:Landroid/widget/TextView;

    .line 154
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchView:Landroid/view/View;

    new-instance p3, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$3;

    invoke-direct {p3, p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$3;-><init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance p2, Lcom/android/settings/autouimode/AutoUIModeAdapter;

    iget-object p3, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mTotalList:Ljava/util/List;

    invoke-direct {p2, p3, p0, v0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/autouimode/SwitchCallBack;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutoModeAdapter:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    .line 162
    iget-object p3, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAllAppControlView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAllAppControlView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    invoke-static {}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->isMiPadDevice()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 166
    sget p2, Lcom/android/settings/R$id;->application_autoui_guide:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutouiView:Landroid/widget/ImageView;

    .line 167
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 169
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutouiView:Landroid/widget/ImageView;

    sget p3, Lcom/android/settings/R$drawable;->autoui_guide_horizontal_pad:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mAutouiView:Landroid/widget/ImageView;

    sget p3, Lcom/android/settings/R$drawable;->autoui_guide_vertical_pad:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :cond_1
    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    .line 176
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    .line 177
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p3, "package"

    .line 178
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mInstallPacksgeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->initAutoUIModeFragment()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mInstallPacksgeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iput-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->initAutoUIModeFragment()V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/SearchActionMode$Callback;)V
    .locals 1

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/SearchActionMode;

    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    :cond_0
    return-void
.end method
