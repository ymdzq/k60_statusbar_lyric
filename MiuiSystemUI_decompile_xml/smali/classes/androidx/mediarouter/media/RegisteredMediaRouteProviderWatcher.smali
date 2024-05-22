.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviders:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;

.field public final mScanPackagesRunnable:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;

    .line 12
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    .line 14
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;

    .line 17
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;

    .line 19
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    .line 21
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;

    .line 24
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 28
    new-instance p2, Landroid/os/Handler;

    .line 30
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 32
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final scanPackages()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 12
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 24
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 44
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 45
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 53
    const-string v4, "android.media.MediaRouteProviderService"

    .line 55
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 60
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 67
    move v2, v3

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 72
    iget-object v6, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 73
    const/4 v7, 0x1

    .line 75
    iget-object v8, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 76
    if-eqz v5, :cond_12

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v5

    .line 83
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 84
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 86
    if-nez v5, :cond_3

    .line 88
    goto :goto_1

    .line 90
    :cond_3
    sget-object v9, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 91
    if-nez v9, :cond_4

    .line 93
    move v9, v3

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 97
    move-result-object v9

    .line 100
    iget-boolean v9, v9, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferReceiverDeclared:Z

    .line 101
    :goto_2
    if-eqz v9, :cond_8

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    move-result v9

    .line 108
    if-eqz v9, :cond_5

    .line 109
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v9

    .line 115
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v10

    .line 119
    if-eqz v10, :cond_7

    .line 120
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v10

    .line 125
    check-cast v10, Landroid/content/pm/ServiceInfo;

    .line 126
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 138
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 140
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v10

    .line 145
    if-eqz v10, :cond_6

    .line 146
    move v9, v7

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    :goto_3
    move v9, v3

    .line 150
    :goto_4
    if-eqz v9, :cond_8

    .line 151
    goto :goto_1

    .line 153
    :cond_8
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 154
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 156
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v11

    .line 161
    move v12, v3

    .line 162
    :goto_5
    if-ge v12, v11, :cond_b

    .line 163
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v13

    .line 168
    check-cast v13, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 169
    iget-object v14, v13, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 171
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 176
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v14

    .line 180
    if-eqz v14, :cond_9

    .line 181
    iget-object v13, v13, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 183
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 185
    move-result-object v13

    .line 188
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v13

    .line 192
    if-eqz v13, :cond_9

    .line 193
    move v13, v7

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    move v13, v3

    .line 197
    :goto_6
    if-eqz v13, :cond_a

    .line 198
    goto :goto_7

    .line 200
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 201
    goto :goto_5

    .line 203
    :cond_b
    const/4 v12, -0x1

    .line 204
    :goto_7
    if-gez v12, :cond_d

    .line 205
    new-instance v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 207
    new-instance v10, Landroid/content/ComponentName;

    .line 209
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 211
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 213
    invoke-direct {v10, v11, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    .line 218
    invoke-direct {v9, v5, v10}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 220
    new-instance v5, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    .line 223
    invoke-direct {v5, p0, v9}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;Landroidx/mediarouter/media/RegisteredMediaRouteProvider;)V

    .line 225
    iput-object v5, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    .line 228
    iget-boolean v5, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 230
    if-nez v5, :cond_c

    .line 232
    iput-boolean v7, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 234
    invoke-virtual {v9}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 236
    :cond_c
    add-int/lit8 v5, v2, 0x1

    .line 239
    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {v8, v9}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 244
    :goto_8
    move v2, v5

    .line 247
    goto/16 :goto_1

    .line 248
    :cond_d
    if-lt v12, v2, :cond_2

    .line 250
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    move-result-object v5

    .line 255
    check-cast v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 256
    iget-boolean v8, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 258
    if-nez v8, :cond_e

    .line 260
    iput-boolean v7, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 262
    invoke-virtual {v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 264
    :cond_e
    iget-object v8, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 267
    if-nez v8, :cond_11

    .line 269
    iget-boolean v8, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 271
    if-eqz v8, :cond_10

    .line 273
    iget-object v8, v5, Landroidx/mediarouter/media/MediaRouteProvider;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 275
    if-eqz v8, :cond_f

    .line 277
    goto :goto_9

    .line 279
    :cond_f
    iget-object v8, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 282
    move-result v8

    .line 285
    if-nez v8, :cond_10

    .line 286
    goto :goto_9

    .line 288
    :cond_10
    move v7, v3

    .line 289
    :goto_9
    if-eqz v7, :cond_11

    .line 290
    invoke-virtual {v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    .line 292
    iget-boolean v7, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 295
    if-nez v7, :cond_11

    .line 297
    new-instance v7, Landroid/content/Intent;

    .line 299
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v8, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 304
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    :try_start_0
    iget-object v8, v5, Landroidx/mediarouter/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    .line 309
    const/16 v9, 0x1001

    .line 311
    invoke-virtual {v8, v7, v5, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 313
    move-result v7

    .line 316
    iput-boolean v7, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    :cond_11
    add-int/lit8 v5, v2, 0x1

    .line 319
    invoke-static {v6, v12, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 321
    goto :goto_8

    .line 324
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 325
    move-result p0

    .line 328
    if-ge v2, p0, :cond_15

    .line 329
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 331
    move-result p0

    .line 334
    sub-int/2addr p0, v7

    .line 335
    :goto_a
    if-lt p0, v2, :cond_15

    .line 336
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v0

    .line 341
    check-cast v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 342
    invoke-virtual {v8, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 344
    move-result-object v1

    .line 347
    const/4 v4, 0x0

    .line 348
    if-eqz v1, :cond_13

    .line 349
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 354
    iput-object v4, v0, Landroidx/mediarouter/media/MediaRouteProvider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 357
    invoke-virtual {v0, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 359
    invoke-virtual {v8, v1, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 362
    iget-object v5, v8, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 365
    const/16 v7, 0x202

    .line 367
    invoke-virtual {v5, v7, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 369
    iget-object v5, v8, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    :cond_13
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 377
    iput-object v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    .line 380
    iget-boolean v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 382
    if-eqz v1, :cond_14

    .line 384
    iput-boolean v3, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 386
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 388
    :cond_14
    add-int/lit8 p0, p0, -0x1

    .line 391
    goto :goto_a

    .line 393
    :cond_15
    return-void
    .line 394
.end method
