.class public final synthetic Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/HistoryTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/HistoryTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/classifier/HistoryTracker;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/classifier/HistoryTracker;

    .line 2
    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    .line 6
    move-result-wide v0

    .line 9
    iget-object p0, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    .line 10
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    .line 14
    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    move-result-object p1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 22
    invoke-virtual {v2}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    .line 24
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    move-result-object v2

    .line 31
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    const-string/jumbo v2, "{belief=%s confidence=%s}"

    .line 36
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 43
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 46
    cmpl-double p1, v0, v2

    .line 51
    if-lez p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    .line 55
    new-instance p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    .line 57
    const/4 v0, 0x4

    .line 59
    invoke-direct {p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 60
    check-cast p0, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    const-string p0, "Triggering False Event (Threshold: 0.9)"

    .line 68
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
    .line 73
.end method
