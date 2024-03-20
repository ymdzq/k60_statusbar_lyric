.class Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ApkIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/linkturbo/ApkIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/linkturbo/ApkIconLoader;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->this$0:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    const-string p1, "FileIconLoader"

    .line 313
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const-wide/32 v0, 0xea60

    .line 355
    invoke-static {p1, p2, p0, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 331
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->this$0:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    invoke-static {p1}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->-$$Nest$fgetmPendingRequests(Lcom/android/settings/wifi/linkturbo/ApkIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 332
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$FileId;

    .line 334
    invoke-static {}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->-$$Nest$sfgetmImageCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$FileId;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;

    if-eqz v3, :cond_0

    .line 335
    iget v4, v3, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;->state:I

    if-nez v4, :cond_0

    .line 337
    iput v1, v3, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;->state:I

    .line 339
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->this$0:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    invoke-static {v1}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/linkturbo/ApkIconLoader;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$FileId;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 340
    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;->setImage(Ljava/lang/Object;)V

    .line 342
    iput v2, v3, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;->state:I

    .line 343
    invoke-static {}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->-$$Nest$sfgetmImageCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$FileId;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->this$0:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->-$$Nest$fgetmMainThreadHandler(Lcom/android/settings/wifi/linkturbo/ApkIconLoader;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public requestLoading()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
