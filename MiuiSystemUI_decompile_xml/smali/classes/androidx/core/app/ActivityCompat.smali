.class public abstract Landroidx/core/app/ActivityCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public static getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p1

    .line 9
    new-instance v1, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    .line 10
    invoke-direct {v1, v0, p1}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 12
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 17
    :try_start_0
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroid/util/SparseArray;

    .line 24
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3

    .line 27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 29
    move-result v5

    .line 32
    if-lez v5, :cond_3

    .line 33
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 38
    check-cast v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 39
    if-eqz v5, :cond_3

    .line 41
    iget-object v6, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Landroid/content/res/Configuration;

    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 49
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    if-nez p1, :cond_0

    .line 55
    iget v6, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    .line 57
    if-eqz v6, :cond_1

    .line 59
    :cond_0
    if-eqz p1, :cond_2

    .line 61
    iget v6, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 65
    move-result v7

    .line 68
    if-ne v6, v7, :cond_2

    .line 69
    :cond_1
    iget-object v3, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Landroid/content/res/ColorStateList;

    .line 71
    monitor-exit v2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    move-object v3, v4

    .line 79
    :goto_0
    if-eqz v3, :cond_4

    .line 80
    goto :goto_3

    .line 82
    :cond_4
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 83
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 88
    check-cast v3, Landroid/util/TypedValue;

    .line 89
    if-nez v3, :cond_5

    .line 91
    new-instance v3, Landroid/util/TypedValue;

    .line 93
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 98
    :cond_5
    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, p0, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 102
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 105
    const/16 v5, 0x1c

    .line 107
    if-lt v3, v5, :cond_6

    .line 109
    const/16 v5, 0x1f

    .line 111
    if-gt v3, v5, :cond_6

    .line 113
    goto :goto_1

    .line 115
    :cond_6
    const/4 v2, 0x0

    .line 116
    :goto_1
    if-eqz v2, :cond_7

    .line 117
    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 120
    move-result-object v2

    .line 123
    :try_start_1
    invoke-static {v0, v2, p1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 124
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const-string v3, "ResourcesCompat"

    .line 130
    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 132
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_2
    if-eqz v4, :cond_9

    .line 137
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    .line 139
    monitor-enter v2

    .line 141
    :try_start_2
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 147
    check-cast v3, Landroid/util/SparseArray;

    .line 148
    if-nez v3, :cond_8

    .line 150
    new-instance v3, Landroid/util/SparseArray;

    .line 152
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 154
    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_8
    new-instance v0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 160
    iget-object v1, v1, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    .line 162
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 164
    move-result-object v1

    .line 167
    invoke-direct {v0, v4, v1, p1}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 168
    invoke-virtual {v3, p0, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 171
    monitor-exit v2

    .line 174
    move-object v3, v4

    .line 175
    goto :goto_3

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    throw p0

    .line 179
    :cond_9
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 180
    move-result-object v3

    .line 183
    :goto_3
    return-object v3

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    throw p0
    .line 187
.end method
