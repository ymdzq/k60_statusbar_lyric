.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "DialogParentPanel.java"


# instance fields
.field private final EMPTY:[I

.field private mButtonGroup:Landroid/widget/LinearLayout;

.field private mButtonPanel:Landroid/view/View;

.field private mContentPanel:Landroid/view/View;

.field private mCustomPanel:Landroid/view/View;

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private mLayoutSplit:Landroidx/constraintlayout/widget/Barrier;

.field private mReferenceIds:[I

.field private mShouldAdjustLayout:Z

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 34
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->EMPTY:[I

    .line 39
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    const/4 p0, 0x1

    .line 40
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->setIsInDialogMode(Z)V

    return-void
.end method

.method private changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 0

    .line 145
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 146
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    return-void
.end method

.method private changeVerticalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 0

    .line 150
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 151
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    return-void
.end method

.method private getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "DialogParentPanel"

    const-string p1, "Child View is null!"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 50
    sget v0, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 52
    sget v0, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 53
    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 54
    sget v2, Lmiuix/appcompat/R$id;->customPanel:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 55
    sget v3, Lmiuix/appcompat/R$id;->buttonGroup:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    .line 56
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mReferenceIds:[I

    return-void
.end method


# virtual methods
.method public adjustLayout()V
    .locals 9

    .line 70
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v2}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v3}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->shouldAdjustLayout()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/Barrier;

    const/4 v8, 0x6

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 78
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/Barrier;

    iget-object v8, p0, Lmiuix/internal/widget/DialogParentPanel;->mReferenceIds:[I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 80
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 82
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 83
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 84
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 85
    iput v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 87
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 88
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 89
    iput v7, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 90
    sget v5, Lmiuix/appcompat/R$id;->topPanel:I

    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 91
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 92
    iput-boolean v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 93
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 95
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 96
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 97
    sget v5, Lmiuix/appcompat/R$id;->contentPanel:I

    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 98
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 99
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 100
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 101
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 102
    iput-boolean v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 103
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 105
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 106
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 108
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 109
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 110
    invoke-direct {p0, v0, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeVerticalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/Barrier;

    iget-object v8, p0, Lmiuix/internal/widget/DialogParentPanel;->EMPTY:[I

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 114
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 117
    invoke-direct {p0, v1, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 118
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 120
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 121
    iput-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    const/4 v8, -0x2

    .line 122
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 123
    invoke-direct {p0, v2, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 125
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 126
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 127
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 128
    invoke-direct {p0, v3, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 129
    sget v5, Lmiuix/appcompat/R$id;->buttonPanel:I

    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 131
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 132
    invoke-direct {p0, v0, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 133
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 134
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 135
    sget v4, Lmiuix/appcompat/R$id;->customPanel:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 136
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 138
    :goto_0
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p0, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    .line 158
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->adjustLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 46
    invoke-direct {p0}, Lmiuix/internal/widget/DialogParentPanel;->init()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    move-result p2

    .line 62
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->shouldAdjustLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 65
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public shouldAdjustLayout()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    return p0
.end method
