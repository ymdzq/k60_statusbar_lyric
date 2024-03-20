.class public final Lcom/miui/systemui/graphics/AppIconsManager;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIconStyledCache:Landroid/util/SparseArray;

.field public final mIconsCache:Landroid/util/SparseArray;

.field public final mQuietFancyIconsCache:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/miui/systemui/graphics/AppIconsManager;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 24
    iput-object p1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
    .line 28
.end method

.method public static getAppIconBitmapCacheForUser(Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 9
    if-nez p0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move-object p0, v0

    .line 19
    :goto_1
    check-cast p0, Landroid/graphics/Bitmap;

    .line 20
    if-eqz p0, :cond_3

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    goto :goto_2

    .line 30
    :cond_2
    move-object v0, p0

    .line 31
    :cond_3
    :goto_2
    return-object v0
    .line 32
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/systemui/graphics/AppIconsManager;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "AppIconsManager"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public static validCount(Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/graphics/Bitmap;

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 40
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    const/4 v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v0

    .line 48
    :goto_1
    if-eqz v2, :cond_0

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    return v1
    .line 54
.end method


# virtual methods
.method public final clearAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 16
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    const-string p0, "clear all caches"

    .line 25
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    throw p0
    .line 36
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string p2, "AppIconsManager:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "AppIcons:"

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 12
    monitor-enter p2

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v2

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x1

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    move-result v6

    .line 33
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Map;

    .line 38
    if-nez v2, :cond_0

    .line 40
    monitor-exit p2

    .line 42
    return-void

    .line 43
    :cond_0
    invoke-static {v2}, Lcom/miui/systemui/graphics/AppIconsManager;->validCount(Ljava/util/Map;)I

    .line 44
    move-result v6

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 48
    move-result-object v7

    .line 51
    const-string/jumbo v8, "userId: %d, cache size: %d, valid bitmaps: %d"

    .line 52
    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    iget-object v9, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 59
    move-result v9

    .line 62
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v9

    .line 66
    aput-object v9, v4, v0

    .line 67
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 69
    move-result v2

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v2

    .line 76
    aput-object v2, v4, v5

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 82
    aput-object v2, v4, v3

    .line 83
    invoke-static {v7, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 88
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    move v1, v0

    .line 95
    :goto_1
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 98
    move-result v2

    .line 101
    if-ge v1, v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 106
    move-result v6

    .line 109
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 113
    check-cast v2, Ljava/util/Map;

    .line 114
    if-nez v2, :cond_2

    .line 116
    monitor-exit p2

    .line 118
    return-void

    .line 119
    :cond_2
    invoke-static {v2}, Lcom/miui/systemui/graphics/AppIconsManager;->validCount(Ljava/util/Map;)I

    .line 120
    move-result v6

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 124
    move-result-object v7

    .line 127
    const-string/jumbo v8, "userId: %d, quiet drawable cache size: %d, valid bitmaps: %d"

    .line 128
    new-array v9, v4, [Ljava/lang/Object;

    .line 131
    iget-object v10, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 133
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 135
    move-result v10

    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v10

    .line 142
    aput-object v10, v9, v0

    .line 143
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 145
    move-result v2

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v2

    .line 152
    aput-object v2, v9, v5

    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v2

    .line 158
    aput-object v2, v9, v3

    .line 159
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 164
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_1

    .line 170
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 172
    monitor-enter v1

    .line 174
    move p2, v0

    .line 175
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 176
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 178
    move-result v2

    .line 181
    if-ge p2, v2, :cond_6

    .line 182
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 186
    move-result v6

    .line 189
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 193
    check-cast v2, Ljava/util/Map;

    .line 194
    if-nez v2, :cond_4

    .line 196
    monitor-exit v1

    .line 198
    return-void

    .line 199
    :cond_4
    invoke-static {v2}, Lcom/miui/systemui/graphics/AppIconsManager;->validCount(Ljava/util/Map;)I

    .line 200
    move-result v6

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 204
    move-result-object v7

    .line 207
    const-string v8, "icon-styled cache for %s, count: %d, valid: %d"

    .line 208
    new-array v9, v4, [Ljava/lang/Object;

    .line 210
    iget-object v10, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconStyledCache:Landroid/util/SparseArray;

    .line 212
    invoke-virtual {v10, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 214
    move-result v10

    .line 217
    if-nez v10, :cond_5

    .line 218
    const-string v10, "crop"

    .line 220
    goto :goto_3

    .line 222
    :cond_5
    const-string v10, "non-crop"

    .line 223
    :goto_3
    aput-object v10, v9, v0

    .line 225
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 227
    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object v2

    .line 234
    aput-object v2, v9, v5

    .line 235
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v2

    .line 240
    aput-object v2, v9, v3

    .line 241
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 246
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    add-int/lit8 p2, p2, 0x1

    .line 250
    goto :goto_2

    .line 252
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 254
    return-void

    .line 257
    :catchall_0
    move-exception p0

    .line 258
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    throw p0

    .line 260
    :catchall_1
    move-exception p0

    .line 261
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    throw p0
    .line 263
.end method

.method public final getAppIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, p3, v0}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmapCache(ZILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 5
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 16
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 17
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/miui/systemui/graphics/AppIconsManager;->loadAppIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 24
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    const-string v1, "icon cache missed for "

    .line 27
    if-eqz p2, :cond_2

    .line 29
    instance-of p2, p1, Lcom/miui/systemui/drawable/NoCacheBitmapDrawable;

    .line 31
    if-nez p2, :cond_2

    .line 33
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/Map;

    .line 41
    move-object p2, p1

    .line 43
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 46
    move-result-object p2

    .line 49
    if-nez p0, :cond_1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 53
    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p2, ", load and put bitmap cache, userId: "

    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string p2, ", don\'t store cache for non-BitmapDrawable: "

    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 105
    :goto_1
    move-object p0, p1

    .line 108
    :goto_2
    return-object p0
    .line 109
.end method

.method public final getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmapCache(ZILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 3
    move-result-object v1

    .line 6
    if-nez v1, :cond_9

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p2, p1, v1, v1}, Lcom/miui/systemui/graphics/AppIconsManager;->loadAppIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 14
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 30
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_0
    instance-of v3, v1, Lcom/miui/maml/FancyDrawable;

    .line 34
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    instance-of v3, v1, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 40
    if-nez v3, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    move-object v3, v1

    .line 45
    check-cast v3, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 46
    invoke-static {v3, v4}, Lcom/miui/utils/DrawableUtils;->getRealDrawables(Lcom/miui/maml/MamlAdaptiveIconDrawable;Z)Ljava/util/List;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v3

    .line 57
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 67
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 68
    instance-of v5, v5, Lcom/miui/maml/FancyDrawable;

    .line 70
    if-eqz v5, :cond_3

    .line 72
    :goto_0
    move v0, v4

    .line 74
    :cond_4
    :goto_1
    const-string v3, ", userId: "

    .line 75
    const-string v4, ", load and put cache "

    .line 77
    const-string v5, "bitmap cache missed for "

    .line 79
    if-eqz v0, :cond_6

    .line 81
    instance-of v0, v1, Lcom/miui/systemui/drawable/NoCacheBitmapDrawable;

    .line 83
    if-nez v0, :cond_6

    .line 85
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Ljava/util/Map;

    .line 93
    if-nez p0, :cond_5

    .line 95
    goto :goto_2

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 98
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string p1, ", noFancyDrawable"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 135
    goto :goto_4

    .line 138
    :cond_6
    instance-of v0, v1, Lcom/miui/systemui/drawable/NoCacheBitmapDrawable;

    .line 139
    if-eqz v0, :cond_7

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string p1, ", don\'t store cache for fancyDrawable: "

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 163
    goto :goto_4

    .line 166
    :cond_7
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object p0

    .line 172
    check-cast p0, Ljava/util/Map;

    .line 173
    if-nez p0, :cond_8

    .line 175
    goto :goto_3

    .line 177
    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 178
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 180
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string p1, ", fancyDrawable with quietDrawable"

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 215
    :goto_4
    move-object v1, v2

    .line 218
    :cond_9
    return-object v1
    .line 219
.end method

.method public final getAppIconBitmapCache(ZILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 13
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 31
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    invoke-static {p3, v0}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmapCacheForUser(Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    if-eqz p1, :cond_2

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "query quiet drawable cache for "

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 80
    check-cast p0, Ljava/util/Map;

    .line 81
    invoke-static {p3, p0}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmapCacheForUser(Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    .line 83
    move-result-object v0

    .line 86
    :cond_2
    if-eqz v0, :cond_3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    const-string p1, "bitmap cache found for "

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string p1, ", userId: "

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 110
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 111
    :cond_3
    return-object v0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0
    .line 117
.end method

.method public final loadAppIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 5
    move-result-object p3

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    invoke-interface {p3, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 11
    move-result-object p3

    .line 14
    :cond_0
    if-nez p4, :cond_1

    .line 15
    iget-object p1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object p4

    .line 22
    :cond_1
    if-eqz p3, :cond_7

    .line 23
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p0, p3, p4}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p0

    .line 30
    instance-of p1, p0, Lcom/miui/maml/FancyDrawable;

    .line 31
    const/4 p2, 0x1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    move-object p1, p0

    .line 36
    check-cast p1, Lcom/miui/maml/FancyDrawable;

    .line 37
    invoke-virtual {p1}, Lcom/miui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    instance-of p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 46
    const/4 p3, 0x0

    .line 48
    if-nez p1, :cond_4

    .line 49
    :cond_3
    move p2, p3

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    move-object p1, p0

    .line 53
    check-cast p1, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 54
    invoke-static {p1, p3}, Lcom/miui/utils/DrawableUtils;->getRealDrawables(Lcom/miui/maml/MamlAdaptiveIconDrawable;Z)Ljava/util/List;

    .line 56
    move-result-object p1

    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p1

    .line 65
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result p4

    .line 69
    if-eqz p4, :cond_3

    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object p4

    .line 75
    check-cast p4, Landroid/graphics/drawable/Drawable;

    .line 76
    instance-of v1, p4, Lcom/miui/maml/FancyDrawable;

    .line 78
    if-eqz v1, :cond_5

    .line 80
    check-cast p4, Lcom/miui/maml/FancyDrawable;

    .line 82
    invoke-virtual {p4}, Lcom/miui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object p4

    .line 87
    if-nez p4, :cond_5

    .line 88
    :goto_0
    if-eqz p2, :cond_6

    .line 90
    new-instance p1, Lcom/miui/systemui/drawable/NoCacheBitmapDrawable;

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 94
    move-result-object p2

    .line 97
    invoke-static {p0}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 98
    move-result-object p0

    .line 101
    invoke-direct {p1, p2, p0}, Lcom/miui/systemui/drawable/NoCacheBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    move-object v0, p1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    move-object v0, p0

    .line 107
    nop

    .line 108
    :catch_0
    :cond_7
    :goto_1
    return-object v0
    .line 109
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const-string v0, "android.intent.extra.UID"

    .line 14
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 24
    if-nez v1, :cond_4

    .line 25
    if-ltz v0, :cond_4

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_1
    const-string v1, "android.intent.extra.REPLACING"

    .line 41
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 44
    move-result p2

    .line 47
    if-eqz p2, :cond_4

    .line 48
    const-string/jumbo p2, "user "

    .line 50
    const-string/jumbo v1, "user "

    .line 53
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 56
    move-result v0

    .line 59
    iget-object v2, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 60
    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mIconsCache:Landroid/util/SparseArray;

    .line 71
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", cache for "

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " removed"

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    iget-object p0, p0, Lcom/miui/systemui/graphics/AppIconsManager;->mQuietFancyIconsCache:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 126
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object p0

    .line 132
    if-eqz p0, :cond_3

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string p2, ", quiet drawable cache for "

    .line 143
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string p1, " removed"

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 159
    invoke-static {p0}, Lcom/miui/systemui/graphics/AppIconsManager;->log(Ljava/lang/String;)V

    .line 160
    :cond_3
    monitor-exit v2

    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    throw p0

    .line 167
    :cond_4
    :goto_1
    return-void
    .line 168
.end method
