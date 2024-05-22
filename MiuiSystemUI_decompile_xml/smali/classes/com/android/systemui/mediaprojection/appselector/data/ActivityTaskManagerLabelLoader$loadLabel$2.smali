.class final Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.mediaprojection.appselector.data.ActivityTaskManagerLabelLoader$loadLabel$2"
    f = "RecentTaskLabelLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    .line 4
    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    .line 6
    iget p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 21
    move-result-object v1

    .line 24
    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    .line 33
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 35
    move-result-object p1

    .line 38
    new-instance v0, Landroid/os/UserHandle;

    .line 39
    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    .line 41
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 46
    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    .line 48
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    .line 50
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    const-string p0, "RecentTaskLabelLoader"

    .line 61
    const-string v0, "Unable to get application info"

    .line 63
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const/4 p0, 0x0

    .line 68
    :goto_0
    return-object p0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
    .line 77
.end method
