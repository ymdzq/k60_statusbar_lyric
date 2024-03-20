.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingDataProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->size()I

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v1, v2

    .line 20
    iget-object v0, v0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->mMotionEvents:Ljava/util/List;

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/MotionEvent;

    .line 29
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    move-result v0

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    const/4 v1, 0x3

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->completePriorGesture()V

    .line 40
    :cond_2
    :goto_0
    return-void
    .line 43
.end method
