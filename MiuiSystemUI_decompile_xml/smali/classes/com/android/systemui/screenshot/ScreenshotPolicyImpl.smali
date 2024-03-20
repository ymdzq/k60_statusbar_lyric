.class public final Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final atmService:Landroid/app/IActivityTaskManager;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final proxyConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

.field public final userMgr:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->userMgr:Landroid/os/UserManager;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->atmService:Landroid/app/IActivityTaskManager;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 11
    new-instance p2, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 13
    new-instance v2, Landroid/content/Intent;

    .line 15
    const-class p3, Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 17
    invoke-direct {v2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    const v3, 0x40000021    # 2.0000079f

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 25
    move-result v4

    .line 28
    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$proxyConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$proxyConnector$1;

    .line 29
    move-object v0, p2

    .line 31
    move-object v1, p1

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 33
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 36
    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 38
    new-instance p3, Landroid/content/ComponentName;

    .line 40
    const-class p4, Lcom/android/systemui/SystemUIService;

    .line 42
    invoke-direct {p3, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    .line 47
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 52
    move-result-object p4

    .line 55
    const/4 p5, -0x1

    .line 56
    invoke-direct {p2, p3, p1, p4, p5}, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/UserHandle;I)V

    .line 57
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 60
    return-void
    .line 62
.end method

.method public static findPrimaryContent$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    .line 30
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    if-eq v2, v5, :cond_2

    .line 37
    if-ne v2, v4, :cond_1

    .line 39
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 56
    :cond_2
    iget p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->I$0:I

    .line 57
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    .line 59
    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    move-object v6, p1

    .line 66
    move p1, p0

    .line 67
    move-object p0, v2

    .line 68
    move-object v2, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    .line 74
    iput v3, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->I$0:I

    .line 76
    iput v5, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isNotificationShadeExpanded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 83
    if-ne p1, v1, :cond_4

    .line 84
    return-object v1

    .line 86
    :cond_4
    move-object v2, p1

    .line 87
    move p1, v3

    .line 88
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 97
    return-object p0

    .line 99
    :cond_5
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    .line 100
    iput v4, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->getAllRootTaskInfosOnDisplay(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    if-ne p1, v1, :cond_6

    .line 108
    return-object v1

    .line 110
    :cond_6
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p1

    .line 116
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v0

    .line 120
    if-eqz v0, :cond_a

    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    move-object v1, v0

    .line 127
    check-cast v1, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-virtual {v1}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    .line 133
    move-result v2

    .line 136
    if-eq v2, v4, :cond_9

    .line 137
    iget-boolean v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->isVisible:Z

    .line 139
    if-eqz v2, :cond_9

    .line 141
    iget-boolean v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->isRunning:Z

    .line 143
    if-eqz v2, :cond_9

    .line 145
    iget v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->numActivities:I

    .line 147
    if-lez v2, :cond_9

    .line 149
    iget-object v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 151
    if-eqz v2, :cond_9

    .line 153
    iget-object v1, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 155
    array-length v1, v1

    .line 157
    if-nez v1, :cond_8

    .line 158
    move v1, v5

    .line 160
    goto :goto_3

    .line 161
    :cond_8
    move v1, v3

    .line 162
    :goto_3
    xor-int/2addr v1, v5

    .line 163
    if-eqz v1, :cond_9

    .line 164
    move v1, v5

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move v1, v3

    .line 168
    :goto_4
    if-eqz v1, :cond_7

    .line 169
    goto :goto_5

    .line 171
    :cond_a
    const/4 v0, 0x0

    .line 172
    :goto_5
    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 173
    if-nez v0, :cond_b

    .line 175
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 177
    return-object p0

    .line 179
    :cond_b
    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImplKt;->toDisplayContentInfo(Landroid/app/ActivityTaskManager$RootTaskInfo;)Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 180
    move-result-object p0

    .line 183
    return-object p0
    .line 184
.end method

.method public static synthetic getAllRootTaskInfosOnDisplay$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V

    .line 7
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public static synthetic getSystemUiContent$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static isManagedProfile$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 52
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$managed$1;

    .line 54
    const/4 v4, 0x0

    .line 56
    invoke-direct {v2, p0, p1, v4}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$managed$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V

    .line 57
    iput v3, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    .line 60
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    move-result p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    const-string p2, "isManagedProfile: "

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 88
    const-string p2, "ScreenshotPolicyImpl"

    .line 89
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p0

    .line 97
    return-object p0
    .line 98
.end method

.method public static synthetic isNotificationShadeExpanded$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    .line 2
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 11
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$1;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$1;

    .line 13
    invoke-interface {p0, p1}, Lcom/android/internal/infra/ServiceConnector;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 15
    move-result-object p0

    .line 18
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$2;

    .line 19
    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$2;-><init>(Lkotlin/coroutines/SafeContinuation;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 24
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method


# virtual methods
.method public getAllRootTaskInfosOnDisplay(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->getAllRootTaskInfosOnDisplay$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public isNotificationShadeExpanded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isNotificationShadeExpanded$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
