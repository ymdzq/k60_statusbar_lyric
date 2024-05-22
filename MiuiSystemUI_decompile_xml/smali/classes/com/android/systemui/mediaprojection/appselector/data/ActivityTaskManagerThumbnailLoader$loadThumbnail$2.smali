.class final Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.mediaprojection.appselector.data.ActivityTaskManagerThumbnailLoader$loadThumbnail$2"
    f = "RecentTaskThumbnailLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $taskId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;

    .line 2
    iput p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->$taskId:I

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;

    .line 4
    iget p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->$taskId:I

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;ILkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->activityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 11
    iget p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;->$taskId:I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 p1, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 19
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, p0, v2, v1}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    .line 25
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v0, "ActivityManagerWrapper"

    .line 31
    const-string v1, "Failed to retrieve task snapshot"

    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    move-object p0, p1

    .line 38
    :goto_0
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 47
    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    .line 49
    :goto_1
    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 52
    if-nez p0, :cond_1

    .line 54
    goto :goto_2

    .line 56
    :cond_1
    move-object p1, v0

    .line 57
    :goto_2
    return-object p1

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
    .line 66
.end method
