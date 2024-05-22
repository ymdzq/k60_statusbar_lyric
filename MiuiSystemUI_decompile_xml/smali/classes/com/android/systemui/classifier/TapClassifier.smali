.class public abstract Lcom/android/systemui/classifier/TapClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mTouchSlop:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    iput p2, p0, Lcom/android/systemui/classifier/TapClassifier;->mTouchSlop:F

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    .line 2
    move-result-object p1

    .line 5
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string p1, "no motion events"

    .line 10
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Landroid/view/MotionEvent;

    .line 22
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 24
    move-result v3

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/MotionEvent;

    .line 32
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 34
    move-result v0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 41
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 51
    check-cast v4, Landroid/view/MotionEvent;

    .line 52
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 54
    move-result v5

    .line 57
    sub-float/2addr v5, v3

    .line 58
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v5

    .line 62
    iget v6, p0, Lcom/android/systemui/classifier/TapClassifier;->mTouchSlop:F

    .line 63
    cmpl-float v5, v5, v6

    .line 65
    if-ltz v5, :cond_2

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "dX too big for a tap: "

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 76
    move-result v0

    .line 79
    sub-float/2addr v0, v3

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 81
    move-result v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v0, "vs "

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 101
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_2
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 106
    move-result v5

    .line 109
    sub-float/2addr v5, v0

    .line 110
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 111
    move-result v5

    .line 114
    cmpl-float v5, v5, v6

    .line 115
    if-ltz v5, :cond_1

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "dY too big for a tap: "

    .line 121
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 126
    move-result v1

    .line 129
    sub-float/2addr v1, v0

    .line 130
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 131
    move-result v0

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, " vs "

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 150
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_3
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 155
    move-result-object p0

    .line 158
    return-object p0
    .line 159
.end method
