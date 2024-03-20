.class public abstract Landroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sTypefaceCache:Landroidx/collection/LruCache;

.field public static final sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 2
    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatApi29Impl;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 7
    new-instance v0, Landroidx/collection/LruCache;

    .line 9
    const/16 v1, 0x10

    .line 11
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 13
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 16
    return-void
    .line 18
.end method

.method public static createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move-object v4, v0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_4

    .line 16
    aget-object v5, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    iget-object v6, v5, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 20
    const-string v7, "r"

    .line 22
    invoke-virtual {p0, v6, v7, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 24
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    if-nez v6, :cond_0

    .line 28
    if-eqz v6, :cond_3

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    :try_start_2
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    .line 33
    invoke-direct {v7, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 35
    iget v8, v5, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 38
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 40
    move-result-object v7

    .line 43
    iget-boolean v8, v5, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 44
    if-eqz v8, :cond_1

    .line 46
    const/4 v8, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v8, v2

    .line 50
    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 51
    move-result-object v7

    .line 54
    iget v5, v5, Landroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 55
    invoke-virtual {v7, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 57
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 61
    move-result-object v5

    .line 64
    if-nez v4, :cond_2

    .line 65
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    .line 67
    invoke-direct {v7, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 69
    move-object v4, v7

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    goto :goto_4

    .line 80
    :catchall_0
    move-exception v5

    .line 81
    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    goto :goto_3

    .line 85
    :catchall_1
    move-exception v6

    .line 86
    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :goto_3
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 90
    :catch_0
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    if-nez v4, :cond_5

    .line 94
    goto :goto_5

    .line 96
    :cond_5
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 97
    move-result-object p0

    .line 100
    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 101
    invoke-direct {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 103
    invoke-static {p0, p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 118
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    :catch_1
    :goto_5
    return-object v0
    .line 122
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Z)Landroid/graphics/Typeface;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v6, p6

    .line 3
    move-object/from16 v1, p7

    .line 5
    instance-of v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 7
    const/4 v3, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x1

    .line 11
    const/4 v9, -0x3

    .line 12
    if-eqz v2, :cond_d

    .line 13
    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 15
    iget-object v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    .line 17
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 21
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 28
    move-result-object v2

    .line 31
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 32
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 34
    move-result-object v4

    .line 37
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v2, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move-object v2, v7

    .line 47
    :goto_1
    if-eqz v2, :cond_3

    .line 48
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    .line 52
    :cond_2
    return-object v2

    .line 55
    :cond_3
    if-eqz p8, :cond_4

    .line 56
    iget v2, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 58
    if-nez v2, :cond_5

    .line 60
    goto :goto_2

    .line 62
    :cond_4
    if-nez v1, :cond_5

    .line 63
    :goto_2
    move v2, v8

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move v2, v3

    .line 67
    :goto_3
    const/4 v4, -0x1

    .line 68
    if-eqz p8, :cond_6

    .line 69
    iget v5, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 71
    move v10, v5

    .line 73
    goto :goto_4

    .line 74
    :cond_6
    move v10, v4

    .line 75
    :goto_4
    new-instance v5, Landroid/os/Handler;

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    move-result-object v11

    .line 81
    invoke-direct {v5, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    new-instance v11, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 85
    invoke-direct {v11, v1}, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 87
    iget-object v12, v0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    .line 90
    new-instance v13, Landroidx/core/provider/CallbackWithHandler;

    .line 92
    invoke-direct {v13, v11, v5}, Landroidx/core/provider/CallbackWithHandler;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/os/Handler;)V

    .line 94
    if-eqz v2, :cond_9

    .line 97
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    iget-object v1, v12, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "-"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 122
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 123
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    check-cast v0, Landroid/graphics/Typeface;

    .line 129
    if-eqz v0, :cond_7

    .line 131
    new-instance v1, Landroidx/core/provider/CallbackWithHandler$1;

    .line 133
    invoke-direct {v1, v11, v0}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/graphics/Typeface;)V

    .line 135
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    goto/16 :goto_5

    .line 141
    :cond_7
    if-ne v10, v4, :cond_8

    .line 143
    move-object v2, p0

    .line 145
    invoke-static {v1, p0, v12, v6}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 146
    move-result-object v0

    .line 149
    invoke-virtual {v13, v0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 150
    iget-object v7, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 153
    goto/16 :goto_7

    .line 155
    :cond_8
    move-object v2, p0

    .line 157
    new-instance v8, Landroidx/core/provider/FontRequestWorker$1;

    .line 158
    const/4 v5, 0x0

    .line 160
    move-object v0, v8

    .line 161
    move-object v3, v12

    .line 162
    move/from16 v4, p6

    .line 163
    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;II)V

    .line 165
    :try_start_0
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 168
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 170
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 173
    int-to-long v1, v10

    .line 174
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 177
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :try_start_2
    check-cast v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 181
    invoke-virtual {v13, v0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 183
    iget-object v7, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 186
    goto/16 :goto_7

    .line 188
    :catch_0
    new-instance v0, Ljava/lang/InterruptedException;

    .line 190
    const-string/jumbo v1, "timeout"

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 195
    throw v0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    throw v0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    .line 202
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 204
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    :catch_3
    new-instance v0, Landroidx/core/provider/CallbackWithHandler$2;

    .line 208
    iget-object v1, v13, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 210
    invoke-direct {v0, v1, v9}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V

    .line 212
    iget-object v1, v13, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 215
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    goto/16 :goto_7

    .line 220
    :cond_9
    move-object v2, p0

    .line 222
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    iget-object v1, v12, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "-"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v9

    .line 246
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 247
    invoke-virtual {v0, v9}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v0

    .line 252
    check-cast v0, Landroid/graphics/Typeface;

    .line 253
    if-eqz v0, :cond_a

    .line 255
    new-instance v1, Landroidx/core/provider/CallbackWithHandler$1;

    .line 257
    invoke-direct {v1, v11, v0}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/graphics/Typeface;)V

    .line 259
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :goto_5
    move-object v7, v0

    .line 265
    goto :goto_7

    .line 266
    :cond_a
    new-instance v0, Landroidx/core/provider/FontRequestWorker$2;

    .line 267
    invoke-direct {v0, v3, v13}, Landroidx/core/provider/FontRequestWorker$2;-><init>(ILjava/lang/Object;)V

    .line 269
    sget-object v4, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    .line 272
    monitor-enter v4

    .line 274
    :try_start_3
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    .line 275
    invoke-virtual {v1, v9}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-result-object v3

    .line 280
    check-cast v3, Ljava/util/ArrayList;

    .line 281
    if-eqz v3, :cond_b

    .line 283
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    monitor-exit v4

    .line 288
    goto :goto_7

    .line 289
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 290
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v1, v9, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    new-instance v10, Landroidx/core/provider/FontRequestWorker$1;

    .line 302
    const/4 v5, 0x1

    .line 304
    move-object v0, v10

    .line 305
    move-object v1, v9

    .line 306
    move-object v2, p0

    .line 307
    move-object v3, v12

    .line 308
    move/from16 v4, p6

    .line 309
    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;II)V

    .line 311
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 314
    new-instance v1, Landroidx/core/provider/FontRequestWorker$2;

    .line 316
    invoke-direct {v1, v8, v9}, Landroidx/core/provider/FontRequestWorker$2;-><init>(ILjava/lang/Object;)V

    .line 318
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 321
    move-result-object v2

    .line 324
    if-nez v2, :cond_c

    .line 325
    new-instance v2, Landroid/os/Handler;

    .line 327
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 329
    move-result-object v3

    .line 332
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 333
    goto :goto_6

    .line 336
    :cond_c
    new-instance v2, Landroid/os/Handler;

    .line 337
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 339
    :goto_6
    new-instance v3, Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    .line 342
    invoke-direct {v3, v2, v10, v1}, Landroidx/core/provider/RequestExecutor$ReplyRunnable;-><init>(Landroid/os/Handler;Landroidx/core/provider/FontRequestWorker$1;Landroidx/core/provider/FontRequestWorker$2;)V

    .line 344
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 347
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 349
    :goto_7
    move-object/from16 v13, p2

    .line 352
    goto/16 :goto_c

    .line 354
    :catchall_0
    move-exception v0

    .line 356
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 357
    throw v0

    .line 358
    :cond_d
    sget-object v2, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 359
    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 361
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    :try_start_5
    iget-object v0, v0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 366
    array-length v2, v0

    .line 368
    move v4, v3

    .line 369
    move-object v5, v7

    .line 370
    :goto_8
    if-ge v4, v2, :cond_10

    .line 371
    aget-object v10, v0, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 373
    :try_start_6
    new-instance v11, Landroid/graphics/fonts/Font$Builder;

    .line 375
    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 377
    move-object/from16 v13, p2

    .line 379
    :try_start_7
    invoke-direct {v11, v13, v12}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 381
    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    .line 384
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 386
    move-result-object v11

    .line 389
    iget-boolean v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    .line 390
    if-eqz v12, :cond_e

    .line 392
    move v12, v8

    .line 394
    goto :goto_9

    .line 395
    :cond_e
    move v12, v3

    .line 396
    :goto_9
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 397
    move-result-object v11

    .line 400
    iget v12, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    .line 401
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 403
    move-result-object v11

    .line 406
    iget-object v10, v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 407
    invoke-virtual {v11, v10}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 409
    move-result-object v10

    .line 412
    invoke-virtual {v10}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 413
    move-result-object v10

    .line 416
    if-nez v5, :cond_f

    .line 417
    new-instance v11, Landroid/graphics/fonts/FontFamily$Builder;

    .line 419
    invoke-direct {v11, v10}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 421
    move-object v5, v11

    .line 424
    goto :goto_a

    .line 425
    :cond_f
    invoke-virtual {v5, v10}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 426
    goto :goto_a

    .line 429
    :catch_4
    move-object/from16 v13, p2

    .line 430
    :catch_5
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 432
    goto :goto_8

    .line 434
    :cond_10
    move-object/from16 v13, p2

    .line 435
    if-nez v5, :cond_11

    .line 437
    goto :goto_b

    .line 439
    :cond_11
    :try_start_8
    invoke-virtual {v5}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 440
    move-result-object v0

    .line 443
    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 444
    invoke-direct {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 446
    invoke-static {v0, v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    .line 449
    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 453
    move-result-object v0

    .line 456
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 457
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 461
    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 464
    goto :goto_b

    .line 465
    :catch_6
    move-object/from16 v13, p2

    .line 466
    :catch_7
    :goto_b
    if-eqz v1, :cond_13

    .line 468
    if-eqz v7, :cond_12

    .line 470
    invoke-virtual {v1, v7}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    .line 472
    goto :goto_c

    .line 475
    :cond_12
    invoke-virtual {v1, v9}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V

    .line 476
    :cond_13
    :goto_c
    if-eqz v7, :cond_14

    .line 479
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 481
    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 483
    move-result-object v1

    .line 486
    invoke-virtual {v0, v1, v7}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_14
    return-object v7
    .line 490
.end method

.method public static createFromResourcesFontFile(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 12
    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    .line 16
    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 18
    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 21
    move-result-object v1

    .line 24
    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 25
    invoke-direct {v2, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 27
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 38
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    sget-object p1, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 50
    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v0
    .line 55
.end method

.method public static createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/16 p0, 0x2d

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method
