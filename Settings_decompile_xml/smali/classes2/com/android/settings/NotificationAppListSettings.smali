.class public Lcom/android/settings/NotificationAppListSettings;
.super Lcom/android/settings/BaseFragment;
.source "NotificationAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationAppListSettings$AppAdapter;,
        Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;,
        Lcom/android/settings/NotificationAppListSettings$AppItem;,
        Lcom/android/settings/NotificationAppListSettings$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG_APP_ITEM:I


# instance fields
.field private mAdapter:Lcom/android/settings/NotificationAppListSettings$AppAdapter;

.field private mApkIconLoader:Lcom/android/settings/ApkIconLoader;

.field private mContext:Landroid/content/Context;

.field mDisabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/NotificationAppListSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mEnabledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/NotificationAppListSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/NotificationAppListSettings$AppAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mAdapter:Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApkIconLoader(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/ApkIconLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayoutInflater(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->loadPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget v0, Lcom/android/settings/R$string;->manage_notification_title:I

    sput v0, Lcom/android/settings/NotificationAppListSettings;->TAG_APP_ITEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/android/settings/NotificationAppListSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationAppListSettings$1;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 131
    :cond_0
    new-instance v0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    .line 132
    invoke-virtual {v0, p0}, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->setContext(Lcom/android/settings/NotificationAppListSettings;)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    sget v0, Lcom/android/settings/R$string;->loading:I

    .line 134
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setMessage(I)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Void;

    .line 136
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAppItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/NotificationAppListSettings$AppItem;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 144
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\u00A0"

    const-string v2, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    .line 147
    :goto_1
    new-instance p1, Lcom/android/settings/NotificationAppListSettings$AppItem;

    invoke-direct {p1, v1, v0, p0}, Lcom/android/settings/NotificationAppListSettings$AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public getAppItem(Ljava/lang/String;)Lcom/android/settings/NotificationAppListSettings$AppItem;
    .locals 0

    .line 140
    new-instance p0, Lcom/android/settings/NotificationAppListSettings$AppItem;

    invoke-direct {p0, p1}, Lcom/android/settings/NotificationAppListSettings$AppItem;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/android/settings/ApkIconLoader;

    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mApkIconLoader:Lcom/android/settings/ApkIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader;->stop()V

    .line 113
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    sget p3, Lcom/android/settings/R$layout;->status_bar_app_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settings/MiuiUtils;->updateFragmentView(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onStart()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->loadPackages()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 102
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings;->mPkgAsyncTaskWithProgress:Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    sget p2, Lcom/android/settings/R$id;->listview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 90
    new-instance p2, Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    invoke-direct {p2, p0}, Lcom/android/settings/NotificationAppListSettings$AppAdapter;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object p2, p0, Lcom/android/settings/NotificationAppListSettings;->mAdapter:Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
