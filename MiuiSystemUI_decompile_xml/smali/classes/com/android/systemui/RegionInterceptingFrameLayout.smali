.class public Lcom/android/systemui/RegionInterceptingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;


# direct methods
.method public static $r8$lambda$Q1SOsU-hqbybjrejNJ9Qnk04mvU(Lcom/android/systemui/RegionInterceptingFrameLayout;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 6
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 11
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 16
    move-result v2

    .line 19
    if-ge v1, v2, :cond_4

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 25
    instance-of v3, v2, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    .line 26
    if-nez v3, :cond_0

    .line 28
    goto :goto_2

    .line 30
    :cond_0
    check-cast v2, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    .line 31
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/android/systemui/DisplayCutoutBaseView;

    .line 34
    iget-object v4, v3, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 36
    iget-object v4, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 38
    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    iget-boolean v3, v3, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    .line 48
    if-eqz v3, :cond_1

    .line 50
    const/4 v3, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v3, v0

    .line 54
    :goto_1
    if-nez v3, :cond_2

    .line 55
    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;->getInterceptRegion()Landroid/graphics/Region;

    .line 58
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    goto :goto_2

    .line 64
    :cond_3
    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 65
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 67
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 69
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    return-void
    .line 75
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;I)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;I)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;I)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;I)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 11
    return-void
    .line 14
.end method
