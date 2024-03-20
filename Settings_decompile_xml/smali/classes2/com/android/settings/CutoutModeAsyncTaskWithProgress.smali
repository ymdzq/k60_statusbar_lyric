.class public Lcom/android/settings/CutoutModeAsyncTaskWithProgress;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "CutoutModeAsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/os/AsyncTaskWithProgress<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field private mWeakSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/CutoutModeSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CutoutModeSettings;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 75
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-static {v4}, Lmiui/os/MiuiInit;->getCutoutMode(Ljava/lang/String;)I

    move-result v3

    .line 80
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/CutoutModeSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;I)Lcom/android/settings/CutoutModeSettings$AppItem;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CutoutModeSettings;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p1, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/CutoutModeAsyncTaskWithProgress$1;

    invoke-direct {v2, p0}, Lcom/android/settings/CutoutModeAsyncTaskWithProgress$1;-><init>(Lcom/android/settings/CutoutModeAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 52
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->cutout_mode_settings_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/CutoutModeSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/CutoutModeSettings$AppItem;

    move-result-object p0

    .line 54
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_1
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings;->mAdapter:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/CutoutModeSettings$AppAdapter;->setItems(Ljava/util/List;)V

    .line 59
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings;->mAdapter:Lcom/android/settings/CutoutModeSettings$AppAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContext(Lcom/android/settings/CutoutModeSettings;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/CutoutModeAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method
