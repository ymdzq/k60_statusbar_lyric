.class public Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;,
        Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;
    }
.end annotation


# static fields
.field public static final TAG_APP_ITEM:I


# instance fields
.field public mAdapter:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

.field private mApkIconLoader:Lcom/android/settings/ApkIconLoader;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field public mThumbnailBlurDisableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public mThumbnailBlurEnableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmApkIconLoader(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)Lcom/android/settings/ApkIconLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->loadPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget v0, Lcom/android/settings/R$layout;->privacy_thumbnail_blur_settings:I

    sput v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->TAG_APP_ITEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$1;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 102
    :cond_0
    new-instance v0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    .line 103
    invoke-virtual {v0, p0}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->setContext(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    sget v0, Lcom/android/settings/R$string;->privacy_thumbnail_blur_progress_message:I

    .line 105
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setMessage(I)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Void;

    .line 107
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAppItem(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;
    .locals 1

    .line 248
    new-instance v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;Landroid/content/pm/ApplicationInfo;Z)V

    return-object v0
.end method

.method public getAppItem(Ljava/lang/String;)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;
    .locals 1

    .line 252
    new-instance v0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    sget p1, Lcom/android/settings/R$layout;->privacy_thumbnail_blur_settings:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 61
    new-instance p1, Lcom/android/settings/ApkIconLoader;

    invoke-direct {p1, p0}, Lcom/android/settings/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    .line 62
    sget p1, Lcom/android/settings/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 63
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mAdapter:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    .line 67
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader;->stop()V

    .line 88
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->loadPackages()V

    return-void
.end method
