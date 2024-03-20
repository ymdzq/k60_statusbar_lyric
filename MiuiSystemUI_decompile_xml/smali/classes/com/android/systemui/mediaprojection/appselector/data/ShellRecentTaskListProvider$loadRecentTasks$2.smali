.class final Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$loadRecentTasks$2"
    f = "RecentTaskListProvider.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

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
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->recents$delegate:Lkotlin/Lazy;

    .line 28
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 34
    if-eqz p1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 38
    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$loadRecentTasks$2;->label:I

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v3, Lkotlin/coroutines/SafeContinuation;

    .line 45
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 47
    move-result-object p0

    .line 50
    invoke-direct {v3, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 51
    iget-object p0, v1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 54
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 58
    move-result p0

    .line 61
    new-instance v4, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;

    .line 62
    invoke-direct {v4, v3}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;-><init>(Lkotlin/coroutines/SafeContinuation;)V

    .line 64
    iget-object v5, p1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 67
    iget-object v5, v5, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 69
    new-instance v6, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;

    .line 71
    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 73
    invoke-direct {v6, p1, p0, v1, v4}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;ILjava/util/concurrent/Executor;Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;)V

    .line 75
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 78
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_2

    .line 87
    return-object v0

    .line 89
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 90
    if-eqz p1, :cond_3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 95
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p1

    .line 105
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 109
    const/4 v1, 0x0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 117
    const/4 v3, 0x2

    .line 119
    new-array v3, v3, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 120
    iget-object v0, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    .line 122
    const/4 v4, 0x0

    .line 124
    aget-object v5, v0, v4

    .line 125
    aput-object v5, v3, v4

    .line 127
    array-length v4, v0

    .line 129
    if-le v4, v2, :cond_4

    .line 130
    aget-object v1, v0, v2

    .line 132
    :cond_4
    aput-object v1, v3, v2

    .line 134
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    move-result-object v0

    .line 139
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 140
    goto :goto_2

    .line 143
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 144
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 146
    move-result v0

    .line 149
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p0

    .line 156
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v0

    .line 160
    if-eqz v0, :cond_8

    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 166
    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 167
    new-instance v8, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 169
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 171
    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 173
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 175
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 177
    if-eqz v2, :cond_6

    .line 179
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 181
    move-result-object v2

    .line 184
    move-object v6, v2

    .line 185
    goto :goto_4

    .line 186
    :cond_6
    move-object v6, v1

    .line 187
    :goto_4
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 188
    if-eqz v0, :cond_7

    .line 190
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 192
    move-result v0

    .line 195
    new-instance v2, Ljava/lang/Integer;

    .line 196
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 198
    move-object v7, v2

    .line 201
    goto :goto_5

    .line 202
    :cond_7
    move-object v7, v1

    .line 203
    :goto_5
    move-object v2, v8

    .line 204
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;-><init>(IILandroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/Integer;)V

    .line 205
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_3

    .line 211
    :cond_8
    return-object p1
    .line 212
.end method
