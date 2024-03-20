.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final proxyConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 11
    new-instance p1, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 13
    new-instance v2, Landroid/content/Intent;

    .line 15
    const-class p2, Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 17
    invoke-direct {v2, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    const v3, 0x40000021    # 2.0000079f

    .line 22
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    .line 25
    move-result v4

    .line 28
    sget-object v5, Lcom/android/systemui/screenshot/ActionIntentExecutor$proxyConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$proxyConnector$1;

    .line 29
    move-object v0, p1

    .line 31
    move-object v1, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final launchIntent(Landroid/content/Intent;Landroid/os/Bundle;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 4
    instance-of v2, v1, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 11
    iget v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 13
    const/high16 v4, -0x80000000

    .line 15
    and-int v5, v3, v4

    .line 17
    if-eqz v5, :cond_0

    .line 19
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 25
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Lkotlin/coroutines/Continuation;)V

    .line 27
    :goto_0
    iget-object v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->result:Ljava/lang/Object;

    .line 30
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    iget v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 34
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x3

    .line 39
    const/4 v8, 0x2

    .line 40
    const/4 v9, 0x1

    .line 41
    if-eqz v4, :cond_4

    .line 42
    if-eq v4, v9, :cond_3

    .line 44
    if-eq v4, v8, :cond_2

    .line 46
    if-ne v4, v7, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0

    .line 58
    :cond_2
    :goto_1
    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 59
    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 61
    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 63
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    goto/16 :goto_5

    .line 68
    :cond_3
    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 70
    iget v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->I$0:I

    .line 72
    iget-object v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 74
    check-cast v9, Landroid/os/Bundle;

    .line 76
    iget-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 78
    check-cast v10, Landroid/content/Intent;

    .line 80
    iget-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 82
    check-cast v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 84
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    move v1, v0

    .line 89
    move v0, v4

    .line 90
    move-object v4, v9

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iput-object v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 96
    move-object/from16 v1, p1

    .line 98
    iput-object v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 100
    move-object/from16 v4, p2

    .line 102
    iput-object v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 104
    move/from16 v10, p3

    .line 106
    iput v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->I$0:I

    .line 108
    move/from16 v11, p4

    .line 110
    iput-boolean v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 112
    iput v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 114
    new-instance v9, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 116
    invoke-direct {v9, v6}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 118
    new-instance v12, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;

    .line 121
    invoke-direct {v12, v9}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;-><init>(Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 123
    iget-object v13, v0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 126
    new-instance v14, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$2;

    .line 128
    invoke-direct {v14, v12}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;)V

    .line 130
    check-cast v13, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 133
    invoke-virtual {v13, v14}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 135
    invoke-virtual {v9, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    move-result-object v9

    .line 141
    if-ne v9, v3, :cond_5

    .line 142
    goto :goto_2

    .line 144
    :cond_5
    move-object v9, v5

    .line 145
    :goto_2
    if-ne v9, v3, :cond_6

    .line 146
    return-object v3

    .line 148
    :cond_6
    move v15, v11

    .line 149
    move-object v11, v0

    .line 150
    move v0, v10

    .line 151
    move-object v10, v1

    .line 152
    move v1, v15

    .line 153
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 154
    move-result v9

    .line 157
    if-ne v0, v9, :cond_7

    .line 158
    iget-object v0, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 160
    new-instance v7, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;

    .line 162
    invoke-direct {v7, v11, v10, v4, v6}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    .line 164
    iput-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 167
    iput-object v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 169
    iput-object v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 171
    iput-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 173
    iput v8, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 175
    invoke-static {v0, v7, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 180
    if-ne v0, v3, :cond_9

    .line 181
    return-object v3

    .line 183
    :cond_7
    iput-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 184
    iput-object v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 186
    iput-object v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 188
    iput-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 190
    iput v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 192
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    new-instance v7, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 197
    iget-object v8, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 199
    new-instance v9, Landroid/content/Intent;

    .line 201
    iget-object v12, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 203
    const-class v13, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    .line 205
    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const v12, 0x40000021    # 2.0000079f

    .line 210
    sget-object v13, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;

    .line 213
    move-object/from16 p0, v7

    .line 215
    move-object/from16 p1, v8

    .line 217
    move-object/from16 p2, v9

    .line 219
    move/from16 p3, v12

    .line 221
    move/from16 p4, v0

    .line 223
    move-object/from16 p5, v13

    .line 225
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 227
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 230
    invoke-direct {v0, v6}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 232
    new-instance v6, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;

    .line 235
    invoke-direct {v6, v10, v4, v0}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 237
    invoke-virtual {v7, v6}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 240
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 246
    if-ne v0, v3, :cond_8

    .line 247
    goto :goto_4

    .line 249
    :cond_8
    move-object v0, v5

    .line 250
    :goto_4
    if-ne v0, v3, :cond_9

    .line 251
    return-object v3

    .line 253
    :cond_9
    move v0, v1

    .line 254
    move-object v2, v11

    .line 255
    :goto_5
    if-eqz v0, :cond_a

    .line 256
    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    .line 258
    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentExecutorKt;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ActionIntentExecutorKt$SCREENSHOT_REMOTE_RUNNER$1;

    .line 260
    const-wide/16 v3, 0x0

    .line 262
    const-wide/16 v6, 0x0

    .line 264
    move-object/from16 p0, v0

    .line 266
    move-object/from16 p1, v1

    .line 268
    move-wide/from16 p2, v3

    .line 270
    move-wide/from16 p4, v6

    .line 272
    invoke-direct/range {p0 .. p5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 274
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 277
    move-result-object v1

    .line 280
    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    const/4 v2, 0x0

    .line 286
    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_6

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "ActionIntentExecutor"

    .line 292
    const-string v2, "Error overriding screenshot app transition"

    .line 294
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_a
    :goto_6
    return-object v5
    .line 299
.end method

.method public final launchIntentAsync(Landroid/content/Intent;Landroid/os/Bundle;IZ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$1;

    .line 2
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$1;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;IZLkotlin/coroutines/Continuation;)V

    .line 11
    const/4 p1, 0x3

    .line 14
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    const/4 p2, 0x0

    .line 17
    invoke-static {p0, p2, p2, v7, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 18
    return-void
    .line 21
.end method
