.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final appSelectorComponentName:Landroid/content/ComponentName;

.field public final callerPackageName:Ljava/lang/String;

.field public final devicePolicyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

.field public final hostUserHandle:Landroid/os/UserHandle;

.field public final recentTaskListProvider:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/os/UserHandle;Lkotlinx/coroutines/CoroutineScope;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->recentTaskListProvider:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->devicePolicyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->hostUserHandle:Landroid/os/UserHandle;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->appSelectorComponentName:Landroid/content/ComponentName;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->callerPackageName:Ljava/lang/String;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 v2, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    return-void
    .line 14
.end method
