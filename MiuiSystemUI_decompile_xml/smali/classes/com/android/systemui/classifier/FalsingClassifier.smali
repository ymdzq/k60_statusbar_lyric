.class public abstract Lcom/android/systemui/classifier/FalsingClassifier;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public final mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingClassifier;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 12
    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public abstract calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
.end method

.method public final falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object v4

    .line 9
    new-instance p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 10
    const/4 v1, 0x1

    .line 12
    move-object v0, p0

    .line 13
    move-wide v2, p2

    .line 14
    move-object v5, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object p0
    .line 19
.end method

.method public final getRecentMotionEvents()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isRight()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 19
    move-result v0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 23
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result p0

    .line 28
    cmpl-float p0, v0, p0

    .line 29
    if-lez p0, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 33
    :cond_1
    :goto_0
    return v1
    .line 34
.end method

.method public final isUp()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    .line 23
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 25
    move-result p0

    .line 28
    cmpg-float p0, v0, p0

    .line 29
    if-gez p0, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 33
    :cond_1
    :goto_0
    return v1
    .line 34
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSessionEnded()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSessionStarted()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
