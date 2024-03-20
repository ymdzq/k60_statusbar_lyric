.class public Lcom/miui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"

.field private static final RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

.field private static final RESOURCE_FALLBACK_DENSITY:I = 0x1e0

.field private static final RESOURCE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String; = "den480/"

.field protected static sBitmapsCache:Landroid/util/LruCache;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sRef:I

.field private static sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field protected mBitmapKeys:Landroidx/collection/ArraySet;

.field protected final mBitmapKeysLock:Ljava/lang/Object;

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Landroidx/collection/ArraySet;

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "den"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    .line 9
    const-string v2, "/"

    .line 11
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    sput-object v0, Lcom/miui/maml/ResourceManager;->RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/miui/maml/ResourceManager$1;

    .line 26
    const/high16 v1, 0x10000000

    .line 28
    invoke-direct {v0, v1}, Lcom/miui/maml/ResourceManager$1;-><init>(I)V

    .line 30
    sput-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    sput-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    return-void
    .line 42
.end method

.method public constructor <init>(Lcom/miui/maml/ResourceLoader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Landroidx/collection/ArraySet;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 18
    new-instance v0, Landroidx/collection/ArraySet;

    .line 20
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 25
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 29
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 37
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
    .line 42
.end method

.method public static synthetic access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 2
    return-object p0
    .line 4
.end method

.method public static clear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 2
    sget-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 23
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 29
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 45
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    :cond_0
    sget-object p0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 57
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 72
    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    move-result-wide v1

    .line 79
    iput-wide v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 80
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 82
    monitor-enter v1

    .line 84
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 85
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object p0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_2
    sget-object p0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_3
    :goto_0
    return-object v0
    .line 105
.end method

.method private loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 10
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 12
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 14
    if-eqz v2, :cond_1

    .line 16
    const-string v2, "ResourceManager"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v4, "try to load resource from extra resource: "

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v4, " of "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 48
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 50
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    move-object v2, p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 67
    const-string v4, "/"

    .line 69
    invoke-static {v2, v3, v4, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 75
    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 77
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    const/4 v1, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 86
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 88
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 90
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 92
    invoke-virtual {v2, p1, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 94
    move-result-object v2

    .line 97
    :cond_3
    if-nez v2, :cond_4

    .line 98
    sget v2, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    .line 100
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    sget-object v3, Lcom/miui/maml/ResourceManager;->RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String;

    .line 109
    invoke-static {v2, v3, p1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 115
    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 117
    move-result-object v2

    .line 120
    :cond_4
    if-nez v2, :cond_5

    .line 121
    const/16 v2, 0x1e0

    .line 123
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 125
    const-string v2, "den480/"

    .line 127
    invoke-static {v2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 133
    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 135
    move-result-object v2

    .line 138
    :cond_5
    if-eqz v2, :cond_7

    .line 139
    if-nez v1, :cond_6

    .line 141
    const-string v0, "ResourceManager"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    const-string v3, "load image from extra resource: "

    .line 147
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, " of "

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 177
    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 192
    iput-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 193
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 195
    iget v0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 197
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    move-result-wide v0

    .line 205
    iput-wide v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 206
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 208
    monitor-enter v0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 211
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 213
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-object p0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 219
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 221
    invoke-virtual {p0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object p0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 230
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    goto :goto_2

    .line 238
    :catchall_0
    move-exception p0

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    throw p0

    .line 241
    :cond_7
    const-string p0, "ResourceManager"

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "fail to load image: "

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_2
    return-object v2
    .line 261
.end method

.method public static retranslateDensity(I)I
    .locals 6

    .line 1
    const/16 v0, 0x168

    .line 2
    const/16 v1, 0xf0

    .line 4
    if-le p0, v1, :cond_0

    .line 6
    if-gt p0, v0, :cond_0

    .line 8
    sub-int/2addr p0, v1

    .line 10
    int-to-double v2, p0

    .line 11
    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    .line 12
    mul-double/2addr v2, v4

    .line 17
    double-to-int p0, v2

    .line 18
    add-int/2addr p0, v1

    .line 19
    return p0

    .line 20
    :cond_0
    const-wide v1, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .line 21
    const/16 v3, 0x21c

    .line 26
    if-le p0, v0, :cond_1

    .line 28
    if-gt p0, v3, :cond_1

    .line 30
    sub-int/2addr p0, v0

    .line 32
    int-to-double v3, p0

    .line 33
    mul-double/2addr v3, v1

    .line 34
    double-to-int p0, v3

    .line 35
    add-int/lit16 p0, p0, 0x140

    .line 36
    return p0

    .line 38
    :cond_1
    if-le p0, v3, :cond_2

    .line 39
    const/16 v0, 0x2d0

    .line 41
    if-gt p0, v0, :cond_2

    .line 43
    sub-int/2addr p0, v3

    .line 45
    int-to-double v3, p0

    .line 46
    mul-double/2addr v3, v1

    .line 47
    double-to-int p0, v3

    .line 48
    add-int/lit16 p0, p0, 0x1e0

    .line 49
    :cond_2
    return p0
    .line 51
.end method

.method public static translateDensity(I)I
    .locals 6

    .line 1
    const/16 v0, 0x140

    .line 2
    const/16 v1, 0xf0

    .line 4
    if-le p0, v1, :cond_0

    .line 6
    if-gt p0, v0, :cond_0

    .line 8
    sub-int/2addr p0, v1

    .line 10
    int-to-double v2, p0

    .line 11
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    .line 12
    mul-double/2addr v2, v4

    .line 14
    double-to-int p0, v2

    .line 15
    add-int/2addr p0, v1

    .line 16
    return p0

    .line 17
    :cond_0
    const-wide/high16 v1, 0x3ff2000000000000L    # 1.125

    .line 18
    const/16 v3, 0x1e0

    .line 20
    if-le p0, v0, :cond_1

    .line 22
    if-gt p0, v3, :cond_1

    .line 24
    sub-int/2addr p0, v0

    .line 26
    int-to-double v3, p0

    .line 27
    mul-double/2addr v3, v1

    .line 28
    double-to-int p0, v3

    .line 29
    add-int/lit16 p0, p0, 0x168

    .line 30
    return p0

    .line 32
    :cond_1
    if-le p0, v3, :cond_2

    .line 33
    const/16 v0, 0x280

    .line 35
    if-gt p0, v0, :cond_2

    .line 37
    sub-int/2addr p0, v3

    .line 39
    int-to-double v3, p0

    .line 40
    mul-double/2addr v3, v1

    .line 41
    double-to-int p0, v3

    .line 42
    add-int/lit16 p0, p0, 0x21c

    .line 43
    :cond_2
    return p0
    .line 45
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearByKeys()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 5
    iget v1, v1, Landroidx/collection/ArraySet;->_size:I

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 13
    iget-object v2, v2, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 15
    aget-object v2, v2, v1

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 19
    sget-object v3, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 21
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v3, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 31
    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
    .line 43
.end method

.method public finalize()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 5
    const/4 v2, 0x1

    .line 7
    sub-int/2addr v1, v2

    .line 8
    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget v0, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 12
    if-lez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 21
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
    .line 27
.end method

.method public finish(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 4
    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 12
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 20
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 27
    monitor-enter p1

    .line 29
    :try_start_2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 30
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 32
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->finish()V

    .line 38
    return-void

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    throw p0
    .line 44
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-object v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "load image "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    const-string v1, "ResourceManager"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 4

    .line 1
    const-string v0, "load image async: "

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    return-object v1

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 19
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 22
    invoke-virtual {v2, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 30
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    monitor-exit v1

    .line 36
    return-object v2

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 38
    invoke-virtual {v2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v2, "ResourceManager"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;

    .line 60
    invoke-direct {v0, p0, p2}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V

    .line 62
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 65
    filled-new-array {p1}, [Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    new-instance p0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 75
    invoke-direct {p0}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 77
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    .line 81
    return-object p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0
    .line 86
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v3, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    if-nez v3, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    .line 13
    if-eqz v1, :cond_1

    .line 15
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 19
    move-result-object v4

    .line 22
    iget-object v5, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    .line 23
    move-object v1, v7

    .line 25
    move-object v2, p1

    .line 26
    move-object v6, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 28
    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 31
    invoke-virtual {v7, p0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 33
    return-object v7

    .line 36
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    invoke-direct {p2, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 39
    iget p0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 42
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 44
    return-object p2

    .line 47
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 48
    return-object p0
    .line 49
.end method

.method public getExtraFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ResourceLoader;->init()V

    .line 4
    return-void
    .line 7
.end method

.method public pause()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public resume()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setCacheSize(I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 2
    return-void
    .line 4
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 2
    return-void
    .line 4
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 17
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    .line 19
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public setTargetDensity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    .line 2
    return-void
    .line 4
.end method
