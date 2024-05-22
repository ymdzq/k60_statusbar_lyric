.class public abstract Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field public static final LOCK:Ljava/lang/Object;

.field public static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

.field public static final sTypefaceCache:Landroidx/collection/LruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroidx/collection/LruCache;

    .line 2
    const/16 v1, 0x10

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 6
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 9
    new-instance v9, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;

    .line 11
    invoke-direct {v9}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/16 v1, 0x2710

    .line 20
    int-to-long v5, v1

    .line 22
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 25
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 27
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 35
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/lang/Object;

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    .line 45
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 47
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 50
    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    .line 53
    return-void
    .line 55
.end method

.method public static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroid/graphics/Typeface;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 12
    invoke-direct {p0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    .line 14
    return-object p0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 18
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, -0x3

    .line 23
    iget-object v3, p2, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 24
    iget p2, p2, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 26
    if-eqz p2, :cond_2

    .line 28
    if-eq p2, v1, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    const/4 p2, -0x2

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    if-eqz v3, :cond_6

    .line 35
    array-length p2, v3

    .line 37
    if-nez p2, :cond_3

    .line 38
    goto :goto_2

    .line 40
    :cond_3
    array-length p2, v3

    .line 41
    const/4 v1, 0x0

    .line 42
    move v4, v1

    .line 43
    :goto_0
    if-ge v4, p2, :cond_6

    .line 44
    aget-object v5, v3, v4

    .line 46
    iget v5, v5, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 48
    if-eqz v5, :cond_5

    .line 50
    if-gez v5, :cond_4

    .line 52
    :goto_1
    move p2, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    move p2, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    :goto_2
    move p2, v1

    .line 61
    :goto_3
    if-eqz p2, :cond_7

    .line 62
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 64
    invoke-direct {p0, p2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 66
    return-object p0

    .line 69
    :cond_7
    invoke-static {p1, v3, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    .line 70
    move-result-object p1

    .line 73
    if-eqz p1, :cond_8

    .line 74
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 79
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    .line 81
    return-object p0

    .line 84
    :cond_8
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 85
    invoke-direct {p0, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 87
    return-object p0

    .line 90
    :catch_0
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 91
    const/4 p1, -0x1

    .line 93
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 94
    return-object p0
    .line 97
.end method
