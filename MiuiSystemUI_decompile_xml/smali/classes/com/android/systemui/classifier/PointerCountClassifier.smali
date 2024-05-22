.class public final Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mMaxPointerCount:I


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_1

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 9
    if-le p1, v0, :cond_2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 20
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    const-string/jumbo v1, "{pointersObserved=%d, threshold=%d}"

    .line 26
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-wide/16 p0, 0x0

    .line 40
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 42
    move-result-object p0

    .line 45
    :goto_1
    return-object p0
    .line 46
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 10
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 19
    move-result p1

    .line 22
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 27
    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 29
    if-eq v0, p1, :cond_1

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "Pointers observed:"

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 49
    :cond_1
    return-void
    .line 52
.end method
