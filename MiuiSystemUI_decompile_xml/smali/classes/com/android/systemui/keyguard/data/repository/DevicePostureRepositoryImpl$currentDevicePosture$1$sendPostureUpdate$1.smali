.class final Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$sendPostureUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$sendPostureUpdate$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->UNKNOWN:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    .line 8
    if-eqz p1, :cond_4

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_3

    .line 13
    const/4 v1, 0x2

    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    const/4 v1, 0x4

    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->FLIPPED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->HALF_OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->CLOSED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    .line 34
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl$currentDevicePosture$1$sendPostureUpdate$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "Error sending posture update to "

    .line 40
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 52
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 58
    if-eqz v0, :cond_5

    .line 60
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 62
    move-result-object p0

    .line 65
    const-string v0, "Failed to send "

    .line 66
    const-string v1, " - downstream canceled or failed."

    .line 68
    const-string v2, "PostureRepositoryImpl"

    .line 70
    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    return-object p0
    .line 77
.end method
