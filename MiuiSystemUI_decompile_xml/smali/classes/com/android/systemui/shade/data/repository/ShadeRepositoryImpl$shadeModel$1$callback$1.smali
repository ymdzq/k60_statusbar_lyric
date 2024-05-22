.class public final Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/shade/domain/model/ShadeModel;

    .line 2
    iget-boolean v1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 4
    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 6
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 8
    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/shade/domain/model/ShadeModel;-><init>(FZZ)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$shadeModel$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 13
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 15
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 25
    move-result-object p0

    .line 28
    const-string p1, "Failed to send updated shade expansion info - downstream canceled or failed."

    .line 29
    const-string v0, "ShadeRepository"

    .line 31
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_0
    return-void
    .line 36
.end method
