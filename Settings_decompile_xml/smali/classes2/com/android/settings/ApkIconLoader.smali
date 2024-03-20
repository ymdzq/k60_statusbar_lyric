.class public Lcom/android/settings/ApkIconLoader;
.super Ljava/lang/Object;
.source "ApkIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApkIconLoader$FileId;,
        Lcom/android/settings/ApkIconLoader$ImageHolder;,
        Lcom/android/settings/ApkIconLoader$LoaderThread;,
        Lcom/android/settings/ApkIconLoader$DrawableHolder;
    }
.end annotation


# static fields
.field private static final mImageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/ApkIconLoader$ImageHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/android/settings/ApkIconLoader$FileId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/ApkIconLoader;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/settings/ApkIconLoader;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRequests(Lcom/android/settings/ApkIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmImageCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/ApkIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/ApkIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/ApkIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApkIconLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 1

    .line 189
    sget-object p0, Lcom/android/settings/ApkIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ApkIconLoader$ImageHolder;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/android/settings/ApkIconLoader$ImageHolder;->create()Lcom/android/settings/ApkIconLoader$ImageHolder;

    move-result-object v0

    .line 193
    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_0
    iget p0, v0, Lcom/android/settings/ApkIconLoader$ImageHolder;->state:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_2

    .line 195
    invoke-virtual {v0}, Lcom/android/settings/ApkIconLoader$ImageHolder;->isNull()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    return p2

    .line 201
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/ApkIconLoader$ImageHolder;->setImageView(Landroid/widget/ImageView;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 206
    iput p0, v0, Lcom/android/settings/ApkIconLoader$ImageHolder;->state:I

    return p0
.end method

.method private processLoadedIcons()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 294
    iget-object v2, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApkIconLoader$FileId;

    .line 295
    iget-object v2, v2, Lcom/android/settings/ApkIconLoader$FileId;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ApkIconLoader;->loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/settings/ApkIconLoader;->requestLoading()V

    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/android/settings/ApkIconLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/android/settings/ApkIconLoader;->mLoadingRequested:Z

    .line 256
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 227
    sget-object p0, Lcom/android/settings/ApkIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 264
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 276
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/ApkIconLoader;->mPaused:Z

    if-nez p1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/settings/ApkIconLoader;->processLoadedIcons()V

    :cond_1
    return v1

    .line 266
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/ApkIconLoader;->mLoadingRequested:Z

    .line 267
    iget-boolean p1, p0, Lcom/android/settings/ApkIconLoader;->mPaused:Z

    if-nez p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/android/settings/ApkIconLoader;->mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

    if-nez p1, :cond_3

    .line 269
    new-instance p1, Lcom/android/settings/ApkIconLoader$LoaderThread;

    invoke-direct {p1, p0}, Lcom/android/settings/ApkIconLoader$LoaderThread;-><init>(Lcom/android/settings/ApkIconLoader;)V

    iput-object p1, p0, Lcom/android/settings/ApkIconLoader;->mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

    .line 270
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 272
    :cond_3
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

    invoke-virtual {p0}, Lcom/android/settings/ApkIconLoader$LoaderThread;->requestLoading()V

    :cond_4
    return v1
.end method

.method public loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 2

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ApkIconLoader;->loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v1, Lcom/android/settings/ApkIconLoader$FileId;

    invoke-direct {v1, p2}, Lcom/android/settings/ApkIconLoader$FileId;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/android/settings/ApkIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-boolean p1, p0, Lcom/android/settings/ApkIconLoader;->mPaused:Z

    if-nez p1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/settings/ApkIconLoader;->requestLoading()V

    :cond_1
    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/android/settings/ApkIconLoader;->mPaused:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/ApkIconLoader;->pause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/ApkIconLoader;->mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/settings/ApkIconLoader;->mLoaderThread:Lcom/android/settings/ApkIconLoader$LoaderThread;

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApkIconLoader;->clear()V

    return-void
.end method
