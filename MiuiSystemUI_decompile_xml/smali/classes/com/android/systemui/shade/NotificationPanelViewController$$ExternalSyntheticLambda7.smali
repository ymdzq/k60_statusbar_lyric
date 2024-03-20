.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    check-cast p2, Ljava/lang/Float;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p0

    .line 9
    float-to-int p0, p0

    .line 10
    iput p0, p1, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 11
    iget-object p2, p1, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 13
    const/16 v0, 0xff

    .line 15
    invoke-virtual {p2, p0, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 17
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 20
    return-void
    .line 23
.end method
