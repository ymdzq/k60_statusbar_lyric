.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mButtonPanel:Landroid/view/View;

.field public mContentPanel:Landroid/view/View;

.field public mCustomPanel:Landroid/view/View;

.field public final mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field public mShouldAdjustLayout:Z

.field public mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 5
    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 10
    const/4 p0, 0x1

    .line 12
    iput-boolean p0, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    .line 13
    return-void
    .line 15
.end method

.method public static getChildLayoutParams(Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, "DialogParentPanel"

    .line 4
    const-string v0, "Child View is null!"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 14
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    .line 7
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 10
    invoke-static {p1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 15
    invoke-static {p1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 20
    invoke-static {p1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 25
    invoke-static {p1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)V

    .line 27
    iget-boolean p0, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    .line 30
    const/4 p1, 0x0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    throw p1

    .line 35
    :cond_0
    throw p1
    .line 36
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a01a6    # @id/buttonPanel

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 12
    const v0, 0x7f0a09b2    # @id/topPanel

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 21
    const v0, 0x7f0a0224    # @id/contentPanel

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 30
    const v0, 0x7f0a0277    # @id/customPanel

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 39
    const v0, 0x7f0a01a5    # @id/buttonGroup

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Landroid/widget/LinearLayout;

    .line 48
    return-void
    .line 50
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 2
    const/4 v2, 0x0

    .line 4
    iget-object v3, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 5
    iget-object v4, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 7
    iget-object v5, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 9
    iget-object v6, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 11
    move v1, p2

    .line 13
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 14
    move-result p2

    .line 17
    iget-boolean v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result p2

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    move-result p2

    .line 31
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 32
    const/4 v2, 0x1

    .line 34
    iget-object v3, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 35
    iget-object v4, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 37
    iget-object v5, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 39
    iget-object v6, v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 41
    move v1, p1

    .line 43
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    .line 44
    move-result p1

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 48
    return-void
    .line 51
.end method

.method public setShouldAdjustLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    .line 2
    return-void
    .line 4
.end method
