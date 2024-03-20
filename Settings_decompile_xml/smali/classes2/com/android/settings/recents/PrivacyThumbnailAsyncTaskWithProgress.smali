.class public Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "PrivacyThumbnailAsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/os/AsyncTaskWithProgress<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mWeakSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;",
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
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 79
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "miui_recents_privacy_thumbnail_blur"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 92
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 93
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 94
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 95
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    move-result-object v5

    .line 98
    iget-object v7, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    move-result-object v5

    .line 101
    iget-object v7, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;

    invoke-direct {v2, p0}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$1;-><init>(Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    iget-object v1, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$2;

    invoke-direct {v2, p0}, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress$2;-><init>(Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->open_privacy_thumbnail_blur_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    move-result-object p0

    .line 62
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurEnableApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_1
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->close_privacy_thumbnail_blur_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    move-result-object p0

    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mThumbnailBlurDisableApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_2
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mAdapter:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->setItems(Ljava/util/List;)V

    .line 73
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->mAdapter:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContext(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method
