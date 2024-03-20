.class public Lcom/android/settings/AspectAsyncTaskWithProgress;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "AspectAsyncTaskWithProgress.java"


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
            "Lcom/android/settings/MaxAspectRatioSettings;",
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

    .line 94
    iget-object p0, p0, Lcom/android/settings/AspectAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MaxAspectRatioSettings;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 107
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-static {v4}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v3

    .line 111
    invoke-static {v4}, Lmiui/os/MiuiInit;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v5

    .line 112
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/settings/MaxAspectRatioSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;ZI)Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v5, v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-eq v5, v3, :cond_4

    const/4 v3, 0x3

    if-eq v5, v3, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 118
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
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
    iget-object p1, p0, Lcom/android/settings/AspectAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MaxAspectRatioSettings;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/AspectAsyncTaskWithProgress$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AspectAsyncTaskWithProgress$1;-><init>(Lcom/android/settings/AspectAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    iget-object v1, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/AspectAsyncTaskWithProgress$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AspectAsyncTaskWithProgress$2;-><init>(Lcom/android/settings/AspectAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    iget-object v1, p1, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/AspectAsyncTaskWithProgress$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AspectAsyncTaskWithProgress$3;-><init>(Lcom/android/settings/AspectAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 69
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->suggest_unrestrict_max_aspect_ratio_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/MaxAspectRatioSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    move-result-object p0

    .line 71
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSuggestApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_1
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 75
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->restrict_max_aspect_ratio_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/MaxAspectRatioSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    move-result-object p0

    .line 77
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mRestrictApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_2
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 81
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->unrestrict_max_aspect_ratio_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/MaxAspectRatioSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    move-result-object p0

    .line 83
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mSupportApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_3
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mAdapter:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->setItems(Ljava/util/List;)V

    .line 88
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings;->mAdapter:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContext(Lcom/android/settings/MaxAspectRatioSettings;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/AspectAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method
