.class public final Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final context:Landroid/content/Context;

.field public final iconFactoryProvider:Ljavax/inject/Provider;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Lcom/android/systemui/shared/system/PackageManagerWrapper;Landroid/content/pm/PackageManager;Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->context:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->packageManager:Landroid/content/pm/PackageManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->iconFactoryProvider:Ljavax/inject/Provider;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final loadIcon(ILandroid/content/ComponentName;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader$loadIcon$2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader$loadIcon$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
