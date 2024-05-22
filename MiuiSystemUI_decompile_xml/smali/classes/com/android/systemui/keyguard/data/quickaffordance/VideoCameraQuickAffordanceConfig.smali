.class public final Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final intent$delegate:Lkotlin/Lazy;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/camera/CameraIntentsWrapper;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 15
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$intent$2;

    .line 17
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$intent$2;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;)V

    .line 19
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->intent$delegate:Lkotlin/Lazy;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "video_camera"

    .line 2
    return-object p0
    .line 5
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$lockScreenState$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$lockScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    .line 5
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 8
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 10
    return-object p0
    .line 13
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f130c44    # @string/video_camera 'Video camera'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method
