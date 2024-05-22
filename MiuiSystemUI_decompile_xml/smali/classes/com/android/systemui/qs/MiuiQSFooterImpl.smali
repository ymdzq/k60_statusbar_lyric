.class public final Lcom/android/systemui/qs/MiuiQSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/MiuiQSFooter;


# instance fields
.field public mExpandClickListener:Landroid/view/View$OnClickListener;

.field public mExpanded:Z

.field public mExpansionAmount:F

.field public mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->setListening(Z)V

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 6
    return-void
    .line 9
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0380    # @id/footer_page_indicator

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->updateResources()V

    .line 16
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 20
    return-void
    .line 23
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x40000

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    const/4 p0, 0x0

    .line 13
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 14
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpanded:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpanded:Z

    .line 7
    return-void
    .line 9
.end method

.method public setExpansion(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpansionAmount:F

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpansionAmount:F

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->setExpansion(F)V

    .line 4
    return-void
    .line 7
.end method

.method public setListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setQQSPanel(Lcom/android/systemui/qs/MiuiQuickQSPanel;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/MiuiPageIndicator;)V

    .line 9
    :cond_1
    return-void
    .line 12
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 11
    :cond_0
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [F

    .line 13
    fill-array-data v2, :array_0

    .line 15
    const-string v3, "alpha"

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 20
    const v1, 0x3f666666    # 0.9f

    .line 23
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 32
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSFooterImpl;->mExpansionAmount:F

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFooterImpl;->setExpansion(F)V

    .line 36
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 40
.end method
