.class public final Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const-string p1, "ConfigurationRepository#onConfigChanged"

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;->sendUpdate(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onThemeChanged()V
    .locals 1

    .line 1
    const-string v0, "ConfigurationRepository#onThemeChanged"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;->sendUpdate(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    const-string v0, "ConfigurationRepository#onUiModeChanged"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;->sendUpdate(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final sendUpdate(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 6
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    move-result-object p0

    .line 19
    const-string v0, "Failed to send "

    .line 20
    const-string/jumbo v1, "updated state"

    .line 22
    const-string v2, " - downstream canceled or failed."

    .line 25
    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
