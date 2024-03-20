.class Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/applications/InstalledAppDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPackageManager:Landroid/content/pm/IPackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .line 720
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 721
    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmPackageManager(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 722
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 723
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 724
    iput p3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 729
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 732
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    iget v4, p1, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 731
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not setApplicationEnabledSetting for pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
