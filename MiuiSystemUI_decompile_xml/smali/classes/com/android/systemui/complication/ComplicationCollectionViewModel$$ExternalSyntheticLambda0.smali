.class public final synthetic Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 9
    move-result-object p1

    .line 12
    new-instance v0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V

    .line 15
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/Collection;

    .line 30
    return-object p0
    .line 32
.end method
