.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_f

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 13
    sget-object v2, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 15
    if-nez v2, :cond_3

    .line 17
    const-class v3, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 19
    monitor-enter v3

    .line 21
    :try_start_0
    sget-object v2, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 22
    if-nez v2, :cond_2

    .line 24
    new-instance v2, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 31
    sget-object v4, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 32
    if-nez v4, :cond_1

    .line 34
    const-class v4, Lcom/airbnb/lottie/network/NetworkCache;

    .line 36
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    sget-object v5, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 39
    if-nez v5, :cond_0

    .line 41
    new-instance v5, Lcom/airbnb/lottie/network/NetworkCache;

    .line 43
    new-instance v6, Lcom/airbnb/lottie/L$1;

    .line 45
    invoke-direct {v6, v0}, Lcom/airbnb/lottie/L$1;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/L$1;)V

    .line 50
    sput-object v5, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 53
    :cond_0
    monitor-exit v4

    .line 55
    move-object v4, v5

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    throw p0

    .line 60
    :cond_1
    :goto_0
    new-instance v0, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    .line 61
    invoke-direct {v0}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    .line 63
    invoke-direct {v2, v4, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;)V

    .line 66
    sput-object v2, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 69
    :cond_2
    monitor-exit v3

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    throw p0

    .line 75
    :cond_3
    :goto_1
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 76
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    if-nez p0, :cond_4

    .line 80
    goto/16 :goto_6

    .line 82
    :cond_4
    iget-object v5, v2, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    :try_start_3
    new-instance v6, Ljava/io/File;

    .line 89
    invoke-virtual {v5}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 91
    move-result-object v7

    .line 94
    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 95
    invoke-static {v1, v8, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 97
    move-result-object v9

    .line 100
    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 104
    move-result v7

    .line 107
    if-eqz v7, :cond_5

    .line 108
    goto :goto_2

    .line 110
    :cond_5
    new-instance v6, Ljava/io/File;

    .line 111
    invoke-virtual {v5}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 113
    move-result-object v5

    .line 116
    invoke-static {v1, v0, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    .line 117
    move-result-object v7

    .line 120
    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 124
    move-result v5

    .line 127
    if-eqz v5, :cond_6

    .line 128
    goto :goto_2

    .line 130
    :cond_6
    move-object v6, v4

    .line 131
    :goto_2
    if-nez v6, :cond_7

    .line 132
    goto :goto_3

    .line 134
    :cond_7
    new-instance v5, Ljava/io/FileInputStream;

    .line 135
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 137
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    move-result-object v7

    .line 143
    const-string v9, ".zip"

    .line 144
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 146
    move-result v7

    .line 149
    if-eqz v7, :cond_8

    .line 150
    move-object v8, v0

    .line 152
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 156
    new-instance v6, Landroid/util/Pair;

    .line 159
    invoke-direct {v6, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    goto :goto_4

    .line 164
    :catch_0
    :goto_3
    move-object v6, v4

    .line 165
    :goto_4
    if-nez v6, :cond_9

    .line 166
    goto :goto_6

    .line 168
    :cond_9
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    check-cast v5, Lcom/airbnb/lottie/network/FileExtension;

    .line 171
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 173
    check-cast v6, Ljava/io/InputStream;

    .line 175
    if-ne v5, v0, :cond_a

    .line 177
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 179
    invoke-direct {v0, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 184
    move-result-object v0

    .line 187
    goto :goto_5

    .line 188
    :cond_a
    invoke-static {v6, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 189
    move-result-object v0

    .line 192
    :goto_5
    iget-object v0, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 193
    if-eqz v0, :cond_b

    .line 195
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 197
    goto :goto_7

    .line 199
    :cond_b
    :goto_6
    move-object v0, v4

    .line 200
    :goto_7
    if-eqz v0, :cond_c

    .line 201
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 203
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 205
    goto :goto_c

    .line 208
    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 209
    const-string v0, "LottieFetchResult close failed "

    .line 212
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 214
    :try_start_4
    iget-object v5, v2, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-static {v1}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/DefaultLottieFetchResult;

    .line 222
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 225
    :try_start_5
    iget-object v5, v4, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 226
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 228
    move-result v5

    .line 231
    div-int/lit8 v5, v5, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 232
    const/4 v6, 0x2

    .line 234
    if-ne v5, v6, :cond_d

    .line 235
    const/4 v3, 0x1

    .line 237
    goto :goto_8

    .line 238
    :catchall_2
    move-exception p0

    .line 239
    goto :goto_d

    .line 240
    :catch_1
    move-exception v1

    .line 241
    goto :goto_a

    .line 242
    :catch_2
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 243
    :try_start_6
    iget-object v3, v4, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 245
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 247
    move-result-object v3

    .line 250
    iget-object v5, v4, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 251
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 253
    move-result-object v5

    .line 256
    invoke-virtual {v2, v1, v3, v5, p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 257
    move-result-object v1

    .line 260
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 261
    goto :goto_9

    .line 264
    :cond_e
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 267
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->error()Ljava/lang/String;

    .line 269
    move-result-object v3

    .line 272
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    :goto_9
    :try_start_7
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 279
    goto :goto_c

    .line 282
    :catch_3
    move-exception v2

    .line 283
    invoke-static {v0, v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    goto :goto_c

    .line 287
    :goto_a
    :try_start_8
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    .line 288
    invoke-direct {v2, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 290
    if-eqz v4, :cond_f

    .line 293
    :try_start_9
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 295
    goto :goto_b

    .line 298
    :catch_4
    move-exception v1

    .line 299
    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :cond_f
    :goto_b
    move-object v1, v2

    .line 303
    :goto_c
    if-eqz p0, :cond_10

    .line 304
    iget-object v0, v1, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 306
    if-eqz v0, :cond_10

    .line 308
    sget-object v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 310
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 312
    iget-object v2, v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 314
    invoke-virtual {v2, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_10
    return-object v1

    .line 319
    :goto_d
    if-eqz v4, :cond_11

    .line 320
    :try_start_a
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 322
    goto :goto_e

    .line 325
    :catch_5
    move-exception v1

    .line 326
    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :cond_11
    :goto_e
    throw p0

    .line 330
    :goto_f
    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 331
    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 333
    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 335
    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 337
    move-result-object p0

    .line 340
    return-object p0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 342
.end method
