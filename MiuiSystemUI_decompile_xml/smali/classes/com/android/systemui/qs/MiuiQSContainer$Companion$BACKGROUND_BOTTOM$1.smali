.class public final Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->access$getBackgroundBottom(Lcom/android/systemui/qs/MiuiQSContainer;)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    float-to-int p0, p2

    .line 4
    iput p0, p1, Lcom/android/systemui/qs/MiuiQSContainer;->backgroundBottom:I

    .line 5
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBottom(I)V

    .line 12
    :goto_0
    return-void
    .line 15
.end method
