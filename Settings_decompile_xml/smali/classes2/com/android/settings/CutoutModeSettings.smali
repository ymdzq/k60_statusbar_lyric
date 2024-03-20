.class public Lcom/android/settings/CutoutModeSettings;
.super Lcom/android/settings/BaseFragment;
.source "CutoutModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CutoutModeSettings$AppAdapter;,
        Lcom/android/settings/CutoutModeSettings$AppItem;
    }
.end annotation


# static fields
.field public static final TAG_APP_ITEM:I


# instance fields
.field public mAdapter:Lcom/android/settings/CutoutModeSettings$AppAdapter;

.field private mApkIconLoader:Lcom/android/settings/ApkIconLoader;

.field public mContext:Landroid/content/Context;

.field private mListView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/CutoutModeAsyncTaskWithProgress<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CutoutModeSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmApkIconLoader(Lcom/android/settings/CutoutModeSettings;)Lcom/android/settings/ApkIconLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/CutoutModeSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/CutoutModeSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/CutoutModeSettings;->loadPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget v0, Lcom/android/settings/R$layout;->cutout_mode_app_list:I

    sput v0, Lcom/android/settings/CutoutModeSettings;->TAG_APP_ITEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/android/settings/CutoutModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CutoutModeSettings$1;-><init>(Lcom/android/settings/CutoutModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 137
    :cond_0
    new-instance v0, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    .line 138
    invoke-virtual {v0, p0}, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;->setContext(Lcom/android/settings/CutoutModeSettings;)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    sget v0, Lcom/android/settings/R$string;->max_aspect_settings_all_app_display_loading:I

    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setMessage(I)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAppItem(Landroid/content/pm/ApplicationInfo;I)Lcom/android/settings/CutoutModeSettings$AppItem;
    .locals 1

    .line 284
    new-instance v0, Lcom/android/settings/CutoutModeSettings$AppItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/CutoutModeSettings$AppItem;-><init>(Lcom/android/settings/CutoutModeSettings;Landroid/content/pm/ApplicationInfo;I)V

    return-object v0
.end method

.method public getAppItem(Ljava/lang/String;)Lcom/android/settings/CutoutModeSettings$AppItem;
    .locals 1

    .line 288
    new-instance v0, Lcom/android/settings/CutoutModeSettings$AppItem;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/CutoutModeSettings$AppItem;-><init>(Lcom/android/settings/CutoutModeSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public isRtl()Z
    .locals 1

    .line 292
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Lcom/android/settings/ApkIconLoader;

    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CutoutModeSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader;->stop()V

    .line 120
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 77
    sget p0, Lcom/android/settings/R$layout;->cutout_mode_app_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 81
    instance-of p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 82
    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/CutoutModeAsyncTaskWithProgress;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/CutoutModeSettings;->loadPackages()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    sget p2, Lcom/android/settings/R$id;->listview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 93
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    new-instance p1, Lcom/android/settings/CutoutModeSettings$AppAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/CutoutModeSettings$AppAdapter;-><init>(Lcom/android/settings/CutoutModeSettings;)V

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings;->mAdapter:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    .line 95
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
