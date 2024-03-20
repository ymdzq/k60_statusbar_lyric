.class public Lcom/android/systemui/statusbar/notification/FakeShadowView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFakeShadow:Landroid/view/View;

.field public mOutlineAlpha:F

.field public final mShadowMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    const/4 p3, 0x4

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    const/4 v0, -0x1

    invoke-direct {p3, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance p3, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;-><init>(Lcom/android/systemui/statusbar/notification/FakeShadowView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070d93    # @dimen/notification_divider_height '7.27dp'

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p2, 0x1

    .line 14
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mShadowMinHeight:I

    return-void
.end method


# virtual methods
.method public setFakeShadowTranslationZ(FFII)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 7
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mShadowMinHeight:I

    .line 20
    int-to-float v0, v0

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 23
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 32
    int-to-float p4, p4

    .line 34
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 40
    move-result p4

    .line 43
    sub-int/2addr p3, p4

    .line 44
    int-to-float p3, p3

    .line 45
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    iget p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    .line 49
    cmpl-float p1, p2, p1

    .line 51
    if-eqz p1, :cond_1

    .line 53
    iput p2, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 59
    :cond_1
    :goto_0
    return-void
    .line 62
.end method
