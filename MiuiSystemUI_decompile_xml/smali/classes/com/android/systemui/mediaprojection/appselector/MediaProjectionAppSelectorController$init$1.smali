.class final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.mediaprojection.appselector.MediaProjectionAppSelectorController$init$1"
    f = "MediaProjectionAppSelectorController.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->recentTaskListProvider:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 28
    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->label:I

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->loadRecentTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    return-object v0

    .line 38
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 54
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 64
    move-object v4, v3

    .line 65
    check-cast v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 66
    iget v4, v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    .line 68
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 70
    move-result-object v4

    .line 73
    iget-object v5, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->hostUserHandle:Landroid/os/UserHandle;

    .line 74
    iget-object v6, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->devicePolicyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    .line 76
    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    .line 78
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v1

    .line 99
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v3

    .line 103
    if-eqz v3, :cond_6

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 109
    move-object v4, v3

    .line 110
    check-cast v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 111
    iget-object v4, v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    .line 113
    iget-object v5, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->appSelectorComponentName:Landroid/content/ComponentName;

    .line 115
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    move-result v4

    .line 120
    xor-int/2addr v4, v2

    .line 121
    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_2

    .line 127
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;

    .line 131
    invoke-direct {v1, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;)V

    .line 133
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 136
    move-result-object p1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 140
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    .line 142
    check-cast p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 144
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    .line 146
    if-nez p0, :cond_7

    .line 148
    const/4 p0, 0x0

    .line 150
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->bind(Ljava/util/List;)V

    .line 151
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    return-object p0
    .line 156
.end method
