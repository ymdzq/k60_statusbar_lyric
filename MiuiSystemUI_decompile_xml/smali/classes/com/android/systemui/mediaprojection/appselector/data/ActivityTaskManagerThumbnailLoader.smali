.class public final Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->activityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final loadThumbnail(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader$loadThumbnail$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;ILkotlin/coroutines/Continuation;)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
