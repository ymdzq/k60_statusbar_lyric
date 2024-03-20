.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 2
    check-cast p2, Ljava/util/List;

    .line 4
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    const p2, 0x7f0710de    # @dimen/status_bar_icon_height '20.3636dp'

    .line 12
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p0

    .line 18
    iput p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 19
    const/4 p0, 0x0

    .line 21
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v0

    .line 27
    if-ge p0, v0, :cond_1

    .line 28
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    const/4 v1, -0x2

    .line 36
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 37
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    instance-of v0, p2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 45
    if-eqz v0, :cond_0

    .line 47
    check-cast p2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 49
    invoke-interface {p2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->onDensityOrFontScaleChanged()V

    .line 51
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    return-void
    .line 57
.end method
