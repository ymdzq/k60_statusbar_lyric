.class public Lcom/android/settings/MaxAspectRatioSettings;
.super Lcom/android/settings/BaseFragment;
.source "MaxAspectRatioSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;,
        Lcom/android/settings/MaxAspectRatioSettings$AppItem;
    }
.end annotation


# static fields
.field public static final TAG_APP_ITEM:I


# instance fields
.field public mAdapter:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

.field private mApkIconLoader:Lcom/android/settings/ApkIconLoader;

.field public mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AspectAsyncTaskWithProgress<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field public mRestrictApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MaxAspectRatioSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSuggestApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MaxAspectRatioSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MaxAspectRatioSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmApkIconLoader(Lcom/android/settings/MaxAspectRatioSettings;)Lcom/android/settings/ApkIconLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/MaxAspectRatioSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/MaxAspectRatioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MaxAspectRatioSettings;->loadPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget v0, Lcom/android/settings/R$layout;->max_aspect_app_list:I

    sput v0, Lcom/android/settings/MaxAspectRatioSettings;->TAG_APP_ITEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/android/settings/MaxAspectRatioSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MaxAspectRatioSettings$1;-><init>(Lcom/android/settings/MaxAspectRatioSettings;)V

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 133
    :cond_0
    new-instance v0, Lcom/android/settings/AspectAsyncTaskWithProgress;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/AspectAsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/settings/AspectAsyncTaskWithProgress;->setContext(Lcom/android/settings/MaxAspectRatioSettings;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    sget v0, Lcom/android/settings/R$string;->max_aspect_settings_all_app_display_loading:I

    .line 136
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setMessage(I)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Void;

    .line 138
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAppItem(Landroid/content/pm/ApplicationInfo;ZI)Lcom/android/settings/MaxAspectRatioSettings$AppItem;
    .locals 1

    .line 287
    new-instance v0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;-><init>(Lcom/android/settings/MaxAspectRatioSettings;Landroid/content/pm/ApplicationInfo;ZI)V

    return-object v0
.end method

.method public getAppItem(Ljava/lang/String;)Lcom/android/settings/MaxAspectRatioSettings$AppItem;
    .locals 1

    .line 291
    new-instance v0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;-><init>(Lcom/android/settings/MaxAspectRatioSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/android/settings/ApkIconLoader;

    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader;->stop()V

    .line 115
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    sget p0, Lcom/android/settings/R$layout;->max_aspect_app_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 79
    instance-of p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 80
    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/AspectAsyncTaskWithProgress;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/MaxAspectRatioSettings;->loadPackages()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget p2, Lcom/android/settings/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 90
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;-><init>(Lcom/android/settings/MaxAspectRatioSettings;)V

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings;->mAdapter:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    .line 94
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
