.class Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "NotificationAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgAsyncTaskWithProgress"
.end annotation

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


# static fields
.field private static sPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWeakSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/NotificationAppListSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->sPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.hybrid"

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->sPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.android.fashiongallery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->sPkgs:Ljava/util/ArrayList;

    const-string v1, "com.mfashiongallery.emag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private addSpecifiedActivities(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 364
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->sPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
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

    .line 335
    iget-object p1, p0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/NotificationAppListSettings;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 336
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 340
    :cond_0
    iget-object v1, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    iget-object v1, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmPackageManager(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 345
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmPackageManager(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->addSpecifiedActivities(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 346
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 347
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 348
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 349
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 350
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Lcom/android/settings/NotificationAppListSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/NotificationAppListSettings$AppItem;

    move-result-object v2

    .line 352
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/notification/NotificationSettingsHelper;->isNotificationsBanned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    iget-object v3, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_2
    iget-object v3, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 290
    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 291
    iget-object p1, p0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/NotificationAppListSettings;

    if-eqz p1, :cond_3

    .line 292
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 296
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress$1;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress$1;-><init>(Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    iget-object v1, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress$2;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress$2;-><init>(Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    iget-object p0, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 315
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->status_bar_settings_disabled_header_title:I

    iget-object v2, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    .line 316
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    .line 317
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 315
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/NotificationAppListSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/NotificationAppListSettings$AppItem;

    move-result-object p0

    .line 318
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object p0, p1, Lcom/android/settings/NotificationAppListSettings;->mDisabledApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    :cond_1
    iget-object p0, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 322
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->status_bar_settings_enabled_header_title:I

    iget-object v2, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    .line 323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    .line 324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 322
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/NotificationAppListSettings;->getAppItem(Ljava/lang/String;)Lcom/android/settings/NotificationAppListSettings$AppItem;

    move-result-object p0

    .line 325
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object p0, p1, Lcom/android/settings/NotificationAppListSettings;->mEnabledApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    :cond_2
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationAppListSettings$AppAdapter;->setItems(Ljava/util/List;)V

    .line 330
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setContext(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 1

    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings$PkgAsyncTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method
