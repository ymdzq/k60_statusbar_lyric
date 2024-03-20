.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1$callback$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCameraLaunchGestureDetected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1$callback$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p1, :cond_3

    .line 7
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->QUICK_AFFORDANCE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "Invalid CameraLaunchSourceModel value: "

    .line 23
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 32
    :cond_1
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->LIFT_TRIGGER:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->POWER_DOUBLE_TAP:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->WIGGLE:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$onCameraLaunchDetected$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 41
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 43
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 49
    if-eqz p1, :cond_4

    .line 51
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 53
    move-result-object p0

    .line 56
    const-string p1, "Failed to send updated onCameraLaunchGestureDetected - downstream canceled or failed."

    .line 57
    const-string v0, "KeyguardInteractor"

    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_4
    return-void
    .line 64
.end method
