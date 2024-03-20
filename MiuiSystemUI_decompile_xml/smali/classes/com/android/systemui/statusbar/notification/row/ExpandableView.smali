.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/Roundable;


# static fields
.field public static final mClipRect:Landroid/graphics/Rect;


# instance fields
.field public mActualHeight:I

.field public mChangingPosition:Z

.field public mClipBottomAmount:I

.field public mClipRightAmount:I

.field public mClipToActualHeight:Z

.field public mClipTopAmount:I

.field public mContentShift:I

.field public mContentTransformationAmount:F

.field public mContentTranslation:F

.field public mExtraWidthForClipping:F

.field public mInShelf:Z

.field public mIsLastChild:Z

.field public mLastInSection:Z

.field public final mMatchParentViews:Ljava/util/ArrayList;

.field public mMinimumHeightForClipping:I

.field public mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field public mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public mTransformingInShelf:Z

.field public mTransientContainer:Landroid/view/ViewGroup;

.field public final mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field public mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 6
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 9
    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 19
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 35
    const p2, 0x7f07109c    # @dimen/shelf_transform_content_shift '32.0dp'

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public applyContentTransformation(FF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public areChildrenExpanded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 19
    invoke-static {p1, v0}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    .line 22
    return-void
    .line 25
.end method

.method public getActualHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 5
    move-result p2

    .line 8
    int-to-float p2, p2

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 10
    move-result v0

    .line 13
    add-float/2addr v0, p2

    .line 14
    const/4 p2, 0x0

    .line 15
    cmpg-float p2, v0, p2

    .line 16
    if-gez p2, :cond_0

    .line 18
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 20
    int-to-float p2, p2

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 23
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 28
    move-result v1

    .line 31
    add-float/2addr v1, v0

    .line 32
    add-float/2addr v1, p2

    .line 33
    float-to-int p2, v1

    .line 34
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 35
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 39
    move-result v0

    .line 42
    add-int/2addr v0, p2

    .line 43
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 46
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 49
    move-result p0

    .line 52
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result p0

    .line 56
    add-int/2addr p0, p2

    .line 57
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 58
    return-void
    .line 60
.end method

.method public getClipBottomAmount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 2
    return p0
    .line 4
.end method

.method public getClipRightAmount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 2
    return p0
    .line 4
.end method

.method public getClipTopAmount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 2
    return p0
    .line 4
.end method

.method public getCollapsedHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getContentTransformationShift()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    .line 2
    int-to-float p0, p0

    .line 4
    return p0
    .line 5
.end method

.method public getContentTranslation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    .line 2
    return p0
    .line 4
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v0, v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 8
    move-result v1

    .line 11
    add-float/2addr v1, v0

    .line 12
    float-to-int v0, v1

    .line 13
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 14
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 16
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 19
    move-result v1

    .line 22
    add-float/2addr v1, v0

    .line 23
    float-to-int v0, v1

    .line 24
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 25
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 27
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 29
    sub-int/2addr v0, v2

    .line 31
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 35
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 36
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    int-to-float v0, v0

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 41
    move-result v1

    .line 44
    add-float/2addr v1, v0

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 46
    move-result v0

    .line 49
    int-to-float v0, v0

    .line 50
    add-float/2addr v1, v0

    .line 51
    float-to-int v0, v1

    .line 52
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 55
    int-to-float v0, v0

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 58
    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 62
    move-result p0

    .line 65
    int-to-float p0, p0

    .line 66
    add-float/2addr v1, p0

    .line 67
    add-float/2addr v1, v0

    .line 68
    float-to-int p0, v1

    .line 69
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    return-void
    .line 72
.end method

.method public getHeaderVisibleAmount()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    return p0
    .line 4
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getHeightWithoutLockscreenConstraints()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getMaxContentHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutlineAlpha()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getOutlineTranslation()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getRelativeTopPadding(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 3
    move-result-object v1

    .line 6
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/View;

    .line 20
    if-ne p1, p0, :cond_0

    .line 22
    :cond_1
    return v0
.end method

.method public getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, p0, v1}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 14
    return-object p0
    .line 16
.end method

.method public getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public bridge synthetic getTopCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTranslation()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2
    return-object p0
    .line 4
.end method

.method public hasExpandingChild()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isAboveShelf()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isChildInGroup()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isContentExpandable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isExpandAnimationRunning()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isGroupExpanded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isGroupExpansionChanging()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isPinned()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isRemoved()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSummaryWithChildren()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isTransparent()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public mustStayOnScreen()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public needsClippingToShelf()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public notifyHeightChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f07109c    # @dimen/shelf_transform_content_shift '32.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    .line 16
    return-void
    .line 18
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 5
    return-void
    .line 8
.end method

.method public onMeasure(II)V
    .locals 12

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 10
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    move-result p2

    .line 18
    const v1, 0x7fffffff

    .line 19
    if-eqz p2, :cond_0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v1

    .line 29
    :cond_0
    const/high16 v3, -0x80000000

    .line 30
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result v3

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 36
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    .line 42
    if-ge v5, v4, :cond_4

    .line 44
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 50
    move-result v9

    .line 53
    const/16 v10, 0x8

    .line 54
    if-ne v9, v10, :cond_1

    .line 56
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object v9

    .line 62
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    const/4 v11, -0x1

    .line 65
    if-eq v10, v11, :cond_3

    .line 66
    if-ltz v10, :cond_2

    .line 68
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result v10

    .line 73
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v7

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v7, v3

    .line 79
    :goto_1
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    invoke-static {p1, v2, v9}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 82
    move-result v9

    .line 85
    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v7

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v6

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    if-ne p2, v7, :cond_5

    .line 106
    goto :goto_3

    .line 108
    :cond_5
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 109
    move-result v0

    .line 112
    :goto_3
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 113
    move-result p2

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v1

    .line 122
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v3

    .line 126
    if-eqz v3, :cond_6

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 132
    check-cast v3, Landroid/view/View;

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 135
    move-result-object v4

    .line 138
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    invoke-static {p1, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    .line 141
    move-result v4

    .line 144
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 145
    goto :goto_4

    .line 148
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 154
    move-result p1

    .line 157
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 158
    return-void
    .line 161
.end method

.method public performAddAnimation(JJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJZ)V

    return-void
.end method

.method public abstract performAddAnimation(JJZ)V
.end method

.method public abstract performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
.end method

.method public pointInView(FFF)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 10
    int-to-float v2, v2

    .line 12
    neg-float v3, p3

    .line 13
    cmpl-float v3, p1, v3

    .line 14
    if-ltz v3, :cond_0

    .line 16
    sub-float/2addr v0, p3

    .line 18
    cmpl-float v0, p2, v0

    .line 19
    if-ltz v0, :cond_0

    .line 21
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    .line 23
    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    .line 25
    sub-int/2addr v0, p0

    .line 27
    int-to-float p0, v0

    .line 28
    add-float/2addr p0, p3

    .line 29
    cmpg-float p0, p1, p0

    .line 30
    if-gez p0, :cond_0

    .line 32
    add-float/2addr v2, p3

    .line 34
    cmpg-float p0, p2, v2

    .line 35
    if-gez p0, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    :cond_0
    return v1
    .line 40
.end method

.method public final removeFromTransientContainer()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    const-string v4, "Expandable view "

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v4, " has transient container "

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, " but different parent "

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    const-string v1, "ExpandableView"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 51
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 58
    return-void
    .line 61
.end method

.method public final removeFromTransientContainerForAdditionTo(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    goto/16 :goto_0

    .line 14
    :cond_0
    if-eqz v1, :cond_2

    .line 16
    if-ne v1, v0, :cond_1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "Removing view "

    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, " from transient container "

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " in preparation for moving to parent "

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    const-string v0, "ExpandableView"

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 55
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 59
    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "Expandable view "

    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p0, " has transient container "

    .line 75
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string p0, " but different parent "

    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "Can\'t add view "

    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string p0, " to container "

    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string p0, "; current parent "

    .line 119
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string p0, " is not a transient container"

    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 135
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v1

    .line 139
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 140
    return-void
    .line 143
.end method

.method public resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 4
    move-result v1

    .line 7
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 12
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    const/4 v3, 0x0

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 33
    const/4 v1, -0x1

    .line 35
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 38
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 45
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    .line 49
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    .line 58
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 65
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 67
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 69
    const-string/jumbo v1, "rotationX"

    .line 71
    const/4 v2, 0x0

    .line 74
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 75
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 83
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 85
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 89
    move-result v2

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 98
    move-result v2

    .line 101
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotationX()F

    .line 107
    move-result v2

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 114
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 120
    :cond_2
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 122
    if-eqz v0, :cond_3

    .line 124
    move-object v0, p0

    .line 126
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 127
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 129
    move-result-object v1

    .line 132
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 133
    if-eqz v0, :cond_3

    .line 135
    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object v0

    .line 142
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v1

    .line 146
    if-eqz v1, :cond_3

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v1

    .line 152
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 153
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 155
    goto :goto_1

    .line 158
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 159
    return-object p0
    .line 161
.end method

.method public setActualHeight(I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setChangingPosition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 2
    return-void
    .line 4
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipRightAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setContentTransformationAmount(FZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    .line 11
    cmpl-float v3, v3, p1

    .line 13
    if-eqz v3, :cond_1

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    move v1, v2

    .line 18
    :goto_1
    or-int/2addr v0, v1

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateContentTransformation()V

    .line 26
    :cond_2
    return-void
    .line 29
.end method

.method public setDimmed(ZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 2
    return-void
    .line 4
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFirstInSection(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHeadsUpIsVisible()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInShelf(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLastInSection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mLastInSection:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasOverlappingRendering()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    :cond_1
    return-void
    .line 13
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 4
    return-void
    .line 7
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public setTransformingInShelf(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    .line 2
    return-void
    .line 4
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 2
    return-void
    .line 4
.end method

.method public setTranslation(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2
    return-void
    .line 5
.end method

.method public setWillBeGone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    .line 2
    return-void
    .line 4
.end method

.method public shouldClipToActualHeight()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public showingPulsing()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public updateBackgroundBg()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateClipping()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 16
    move-result v1

    .line 19
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 20
    sub-int/2addr v1, v2

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 26
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 33
    move-result v2

    .line 36
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 37
    sub-int/2addr v2, v3

    .line 39
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 40
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 51
    :goto_0
    return-void
    .line 54
.end method

.method public updateContentTransformation()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    .line 2
    neg-float v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTransformationShift()F

    .line 5
    move-result v1

    .line 8
    mul-float/2addr v1, v0

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    sub-float v0, v2, v0

    .line 14
    const/high16 v3, 0x3f000000    # 0.5f

    .line 16
    div-float/2addr v0, v3

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 19
    move-result v0

    .line 22
    sget-object v2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 23
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 25
    invoke-virtual {v2, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 27
    move-result v0

    .line 30
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    .line 31
    if-eqz v2, :cond_0

    .line 33
    const v2, 0x3ecccccd    # 0.4f

    .line 35
    mul-float/2addr v1, v2

    .line 38
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyContentTransformation(FF)V

    .line 41
    return-void
    .line 44
.end method
