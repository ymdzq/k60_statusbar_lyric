.class final Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "Error sending rear display state update to "

    .line 14
    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 20
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 30
    move-result-object p0

    .line 33
    const-string v0, "Failed to send "

    .line 34
    const-string v1, " - downstream canceled or failed."

    .line 36
    const-string v2, "RearDisplayStateRepositoryImpl"

    .line 38
    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    return-object p0
    .line 45
.end method
