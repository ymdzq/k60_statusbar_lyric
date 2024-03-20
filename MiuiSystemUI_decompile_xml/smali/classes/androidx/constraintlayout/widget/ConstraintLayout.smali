.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sSharedValues:Landroidx/constraintlayout/widget/SharedValues;


# instance fields
.field public final mChildrenByIds:Landroid/util/SparseArray;

.field public final mConstraintHelpers:Ljava/util/ArrayList;

.field public mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field public mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mConstraintSetId:I

.field public mDesignIds:Ljava/util/HashMap;

.field public mDirtyHierarchy:Z

.field public final mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public final mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mMinHeight:I

.field public mMinWidth:I

.field public mOptimizationLevel:I

.field public final mTempMapIdToWidget:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 16
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 17
    invoke-virtual {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 34
    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 38
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 51
    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 57
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const p1, 0x7fffffff

    .line 58
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 59
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 p1, 0x101

    .line 61
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 63
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 67
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {p1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 68
    invoke-virtual {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 11
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 20
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 28
    move-result p0

    .line 31
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    if-lez p0, :cond_0

    .line 37
    move v2, p0

    .line 39
    :cond_0
    return v2
    .line 40
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/SharedValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/widget/SharedValues;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/SharedValues;-><init>()V

    .line 8
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 11
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 13
    return-object v0
    .line 15
.end method


# virtual methods
.method public final applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    move-object/from16 v6, p3

    .line 4
    move-object/from16 v7, p4

    .line 6
    move-object/from16 v8, p5

    .line 8
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v1

    .line 16
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 17
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsInPlaceholder:Z

    .line 19
    const/4 v9, 0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    iput-boolean v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInPlaceholder:Z

    .line 24
    const/16 v1, 0x8

    .line 26
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 28
    :cond_0
    iput-object v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 30
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 36
    move-object/from16 v10, p0

    .line 38
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 40
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 42
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    move-object/from16 v10, p0

    .line 48
    :goto_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 50
    const/4 v11, -0x1

    .line 52
    if-eqz v0, :cond_4

    .line 53
    move-object v0, v6

    .line 55
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 56
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuideBegin:I

    .line 58
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuideEnd:I

    .line 60
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuidePercent:F

    .line 62
    const/high16 v4, -0x40800000    # -1.0f

    .line 64
    cmpl-float v5, v3, v4

    .line 66
    if-eqz v5, :cond_2

    .line 68
    if-lez v5, :cond_2c

    .line 70
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 72
    iput v11, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 74
    iput v11, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 76
    goto/16 :goto_13

    .line 78
    :cond_2
    if-eq v1, v11, :cond_3

    .line 80
    if-le v1, v11, :cond_2c

    .line 82
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 84
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 86
    iput v11, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 88
    goto/16 :goto_13

    .line 90
    :cond_3
    if-eq v2, v11, :cond_2c

    .line 92
    if-le v2, v11, :cond_2c

    .line 94
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 96
    iput v11, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 98
    iput v2, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 100
    goto/16 :goto_13

    .line 102
    :cond_4
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 104
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 106
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 108
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 110
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 112
    iget v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 114
    iget v15, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 116
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 118
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 120
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 122
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 124
    move/from16 p2, v5

    .line 126
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 128
    move-object/from16 v16, v5

    .line 130
    const/4 v5, 0x0

    .line 132
    if-eq v2, v11, :cond_6

    .line 133
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 138
    move-object v2, v0

    .line 139
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 140
    if-eqz v2, :cond_5

    .line 142
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 144
    iget v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 146
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 148
    const/4 v13, 0x0

    .line 150
    move-object/from16 v0, p3

    .line 151
    move-object v1, v12

    .line 153
    move-object v14, v3

    .line 154
    move-object v3, v12

    .line 155
    move-object v12, v4

    .line 156
    move v4, v10

    .line 157
    move v10, v5

    .line 158
    move-object/from16 v15, v16

    .line 159
    move v5, v13

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 162
    iput v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 165
    goto :goto_1

    .line 167
    :cond_5
    move-object v14, v3

    .line 168
    move-object v12, v4

    .line 169
    move v10, v5

    .line 170
    move-object/from16 v15, v16

    .line 171
    :goto_1
    move v0, v10

    .line 173
    move-object/from16 v17, v12

    .line 174
    move-object/from16 v18, v14

    .line 176
    move-object/from16 v16, v15

    .line 178
    goto/16 :goto_7

    .line 180
    :cond_6
    move v2, v5

    .line 182
    move-object v5, v4

    .line 183
    move-object v4, v3

    .line 184
    move-object/from16 v3, v16

    .line 185
    if-eq v0, v11, :cond_8

    .line 187
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 192
    move-object/from16 v16, v0

    .line 193
    check-cast v16, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    if-eqz v16, :cond_7

    .line 197
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 199
    move-object/from16 v0, p3

    .line 201
    move/from16 v17, v1

    .line 203
    move-object v1, v4

    .line 205
    move-object/from16 v2, v16

    .line 206
    move-object/from16 v16, v3

    .line 208
    move-object v3, v4

    .line 210
    move-object/from16 v18, v4

    .line 211
    move/from16 v4, v17

    .line 213
    move-object/from16 v17, v5

    .line 215
    move/from16 v5, p2

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 219
    goto :goto_2

    .line 222
    :cond_7
    move-object/from16 v16, v3

    .line 223
    move-object/from16 v18, v4

    .line 225
    move-object/from16 v17, v5

    .line 227
    goto :goto_2

    .line 229
    :cond_8
    move-object/from16 v16, v3

    .line 230
    move-object/from16 v18, v4

    .line 232
    move-object/from16 v17, v5

    .line 234
    if-eq v1, v11, :cond_9

    .line 236
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v0

    .line 241
    move-object v2, v0

    .line 242
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 243
    if-eqz v2, :cond_9

    .line 245
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 247
    move-object/from16 v0, p3

    .line 249
    move-object/from16 v1, v18

    .line 251
    move-object/from16 v3, v17

    .line 253
    move/from16 v5, p2

    .line 255
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 257
    :cond_9
    :goto_2
    if-eq v12, v11, :cond_a

    .line 260
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v0

    .line 265
    move-object v2, v0

    .line 266
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 267
    if-eqz v2, :cond_b

    .line 269
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    move-object/from16 v0, p3

    .line 273
    move-object/from16 v1, v17

    .line 275
    move-object/from16 v3, v18

    .line 277
    move v5, v14

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 280
    goto :goto_3

    .line 283
    :cond_a
    if-eq v13, v11, :cond_b

    .line 284
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v0

    .line 289
    move-object v2, v0

    .line 290
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 291
    if-eqz v2, :cond_b

    .line 293
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 295
    move-object/from16 v0, p3

    .line 297
    move-object/from16 v1, v17

    .line 299
    move-object/from16 v3, v17

    .line 301
    move v5, v14

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 304
    :cond_b
    :goto_3
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 307
    if-eq v0, v11, :cond_c

    .line 309
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 311
    move-result-object v0

    .line 314
    move-object v2, v0

    .line 315
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 316
    if-eqz v2, :cond_d

    .line 318
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 320
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 322
    move-object/from16 v0, p3

    .line 324
    move-object/from16 v1, v16

    .line 326
    move-object/from16 v3, v16

    .line 328
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 330
    goto :goto_4

    .line 333
    :cond_c
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 334
    if-eq v0, v11, :cond_d

    .line 336
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v0

    .line 341
    move-object v2, v0

    .line 342
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 343
    if-eqz v2, :cond_d

    .line 345
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 347
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 349
    move-object/from16 v0, p3

    .line 351
    move-object/from16 v1, v16

    .line 353
    move-object v3, v9

    .line 355
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 356
    :cond_d
    :goto_4
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 359
    if-eq v0, v11, :cond_e

    .line 361
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object v0

    .line 366
    move-object v2, v0

    .line 367
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 368
    if-eqz v2, :cond_f

    .line 370
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 372
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 374
    move-object/from16 v0, p3

    .line 376
    move-object v1, v9

    .line 378
    move-object/from16 v3, v16

    .line 379
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 381
    goto :goto_5

    .line 384
    :cond_e
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 385
    if-eq v0, v11, :cond_f

    .line 387
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v0

    .line 392
    move-object v2, v0

    .line 393
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 394
    if-eqz v2, :cond_f

    .line 396
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 398
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 400
    move-object/from16 v0, p3

    .line 402
    move-object v1, v9

    .line 404
    move-object v3, v9

    .line 405
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 406
    :cond_f
    :goto_5
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 409
    if-eq v4, v11, :cond_10

    .line 411
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 413
    move-object/from16 v0, p0

    .line 415
    move-object/from16 v1, p3

    .line 417
    move-object/from16 v2, p4

    .line 419
    move-object/from16 v3, p5

    .line 421
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 423
    goto :goto_6

    .line 426
    :cond_10
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 427
    if-eq v4, v11, :cond_11

    .line 429
    move-object/from16 v0, p0

    .line 431
    move-object/from16 v1, p3

    .line 433
    move-object/from16 v2, p4

    .line 435
    move-object/from16 v3, p5

    .line 437
    move-object/from16 v5, v16

    .line 439
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 441
    goto :goto_6

    .line 444
    :cond_11
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 445
    if-eq v4, v11, :cond_12

    .line 447
    move-object/from16 v0, p0

    .line 449
    move-object/from16 v1, p3

    .line 451
    move-object/from16 v2, p4

    .line 453
    move-object/from16 v3, p5

    .line 455
    move-object v5, v9

    .line 457
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 458
    :cond_12
    :goto_6
    const/4 v0, 0x0

    .line 461
    cmpl-float v1, v15, v0

    .line 462
    if-ltz v1, :cond_13

    .line 464
    iput v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 466
    :cond_13
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 468
    cmpl-float v2, v1, v0

    .line 470
    if-ltz v2, :cond_14

    .line 472
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 474
    :cond_14
    :goto_7
    if-eqz p1, :cond_16

    .line 476
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 478
    if-ne v1, v11, :cond_15

    .line 480
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 482
    if-eq v2, v11, :cond_16

    .line 484
    :cond_15
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 486
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 488
    iput v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 490
    :cond_16
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 492
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 494
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 496
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 498
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 500
    const/4 v8, -0x2

    .line 502
    const/4 v10, 0x0

    .line 503
    if-nez v1, :cond_19

    .line 504
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 506
    if-ne v1, v11, :cond_18

    .line 508
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 510
    if-eqz v1, :cond_17

    .line 512
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 514
    goto :goto_8

    .line 517
    :cond_17
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 518
    :goto_8
    move-object/from16 v1, v18

    .line 521
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 523
    move-result-object v1

    .line 526
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 527
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 529
    move-object/from16 v1, v17

    .line 531
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 533
    move-result-object v1

    .line 536
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 537
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 539
    goto :goto_9

    .line 541
    :cond_18
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 542
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 545
    goto :goto_9

    .line 548
    :cond_19
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 549
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 552
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 554
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 557
    if-ne v1, v8, :cond_1a

    .line 559
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 561
    :cond_1a
    :goto_9
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 564
    if-nez v1, :cond_1d

    .line 566
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 568
    if-ne v1, v11, :cond_1c

    .line 570
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 572
    if-eqz v1, :cond_1b

    .line 574
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 576
    goto :goto_a

    .line 579
    :cond_1b
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 580
    :goto_a
    move-object/from16 v1, v16

    .line 583
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 585
    move-result-object v1

    .line 588
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 589
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 591
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 593
    move-result-object v1

    .line 596
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 597
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 599
    goto :goto_b

    .line 601
    :cond_1c
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 602
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 605
    goto :goto_b

    .line 608
    :cond_1d
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 609
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 612
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 614
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 617
    if-ne v1, v8, :cond_1e

    .line 619
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 621
    :cond_1e
    :goto_b
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 624
    if-eqz v1, :cond_26

    .line 626
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 628
    move-result v2

    .line 631
    if-nez v2, :cond_1f

    .line 632
    goto/16 :goto_10

    .line 634
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 636
    move-result v2

    .line 639
    const/16 v3, 0x2c

    .line 640
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 642
    move-result v3

    .line 645
    if-lez v3, :cond_22

    .line 646
    add-int/lit8 v4, v2, -0x1

    .line 648
    if-ge v3, v4, :cond_22

    .line 650
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 652
    move-result-object v4

    .line 655
    const-string v5, "W"

    .line 656
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 658
    move-result v5

    .line 661
    if-eqz v5, :cond_20

    .line 662
    move v11, v10

    .line 664
    goto :goto_c

    .line 665
    :cond_20
    const-string v5, "H"

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 668
    move-result v4

    .line 671
    if-eqz v4, :cond_21

    .line 672
    const/4 v4, 0x1

    .line 674
    const/4 v11, 0x1

    .line 675
    goto :goto_d

    .line 676
    :cond_21
    :goto_c
    const/4 v4, 0x1

    .line 677
    :goto_d
    add-int/2addr v3, v4

    .line 678
    goto :goto_e

    .line 679
    :cond_22
    const/4 v4, 0x1

    .line 680
    move v3, v10

    .line 681
    :goto_e
    const/16 v5, 0x3a

    .line 682
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 684
    move-result v5

    .line 687
    if-ltz v5, :cond_24

    .line 688
    sub-int/2addr v2, v4

    .line 690
    if-ge v5, v2, :cond_24

    .line 691
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 693
    move-result-object v2

    .line 696
    add-int/2addr v5, v4

    .line 697
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 698
    move-result-object v1

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 702
    move-result v3

    .line 705
    if-lez v3, :cond_25

    .line 706
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 708
    move-result v3

    .line 711
    if-lez v3, :cond_25

    .line 712
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 714
    move-result v2

    .line 717
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 718
    move-result v1

    .line 721
    cmpl-float v3, v2, v0

    .line 722
    if-lez v3, :cond_25

    .line 724
    cmpl-float v3, v1, v0

    .line 726
    if-lez v3, :cond_25

    .line 728
    const/4 v3, 0x1

    .line 730
    if-ne v11, v3, :cond_23

    .line 731
    div-float/2addr v1, v2

    .line 733
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 734
    move-result v5

    .line 737
    goto :goto_f

    .line 738
    :cond_23
    div-float/2addr v2, v1

    .line 739
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 740
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    goto :goto_f

    .line 744
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 745
    move-result-object v1

    .line 748
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 749
    move-result v2

    .line 752
    if-lez v2, :cond_25

    .line 753
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 755
    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    goto :goto_f

    .line 759
    :catch_0
    :cond_25
    move v5, v0

    .line 760
    :goto_f
    cmpl-float v1, v5, v0

    .line 761
    if-lez v1, :cond_27

    .line 763
    iput v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 765
    iput v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 767
    goto :goto_11

    .line 769
    :cond_26
    :goto_10
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 770
    :cond_27
    :goto_11
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 772
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 774
    aput v1, v2, v10

    .line 776
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 778
    const/4 v3, 0x1

    .line 780
    aput v1, v2, v3

    .line 781
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 783
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 785
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 787
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 789
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 791
    if-ltz v1, :cond_28

    .line 793
    const/4 v2, 0x3

    .line 795
    if-gt v1, v2, :cond_28

    .line 796
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 798
    :cond_28
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 800
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 802
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 804
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 806
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 808
    iput v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 810
    const v2, 0x7fffffff

    .line 812
    if-ne v3, v2, :cond_29

    .line 815
    move v3, v10

    .line 817
    :cond_29
    iput v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 818
    iput v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 820
    cmpl-float v3, v4, v0

    .line 822
    const/4 v5, 0x2

    .line 824
    const/high16 v8, 0x3f800000    # 1.0f

    .line 825
    if-lez v3, :cond_2a

    .line 827
    cmpg-float v3, v4, v8

    .line 829
    if-gez v3, :cond_2a

    .line 831
    if-nez v1, :cond_2a

    .line 833
    iput v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 835
    :cond_2a
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 837
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 839
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 841
    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 843
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 845
    iput v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 847
    if-ne v4, v2, :cond_2b

    .line 849
    goto :goto_12

    .line 851
    :cond_2b
    move v10, v4

    .line 852
    :goto_12
    iput v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 853
    iput v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 855
    cmpl-float v0, v7, v0

    .line 857
    if-lez v0, :cond_2c

    .line 859
    cmpg-float v0, v7, v8

    .line 861
    if-gez v0, :cond_2c

    .line 863
    if-nez v1, :cond_2c

    .line 865
    iput v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 867
    :cond_2c
    :goto_13
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 13
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 24
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 41
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 46
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    move-result v4

    .line 54
    move v5, v2

    .line 55
    :goto_1
    if-ge v5, v4, :cond_3

    .line 56
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 62
    move-result v7

    .line 65
    const/16 v8, 0x8

    .line 66
    if-ne v7, v8, :cond_1

    .line 68
    goto/16 :goto_2

    .line 70
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    instance-of v7, v6, Ljava/lang/String;

    .line 78
    if-eqz v7, :cond_2

    .line 80
    check-cast v6, Ljava/lang/String;

    .line 82
    const-string v7, ","

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 89
    array-length v7, v6

    .line 90
    const/4 v8, 0x4

    .line 91
    if-ne v7, v8, :cond_2

    .line 92
    aget-object v7, v6, v2

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    move-result v7

    .line 99
    const/4 v8, 0x1

    .line 100
    aget-object v8, v6, v8

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    move-result v8

    .line 106
    const/4 v9, 0x2

    .line 107
    aget-object v9, v6, v9

    .line 108
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    move-result v9

    .line 113
    const/4 v10, 0x3

    .line 114
    aget-object v6, v6, v10

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    move-result v6

    .line 120
    int-to-float v7, v7

    .line 121
    const/high16 v10, 0x44870000    # 1080.0f

    .line 122
    div-float/2addr v7, v10

    .line 124
    mul-float/2addr v7, v1

    .line 125
    float-to-int v7, v7

    .line 126
    int-to-float v8, v8

    .line 127
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 128
    div-float/2addr v8, v11

    .line 130
    mul-float/2addr v8, v3

    .line 131
    float-to-int v8, v8

    .line 132
    int-to-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    mul-float/2addr v9, v1

    .line 135
    float-to-int v9, v9

    .line 136
    int-to-float v6, v6

    .line 137
    div-float/2addr v6, v11

    .line 138
    mul-float/2addr v6, v3

    .line 139
    float-to-int v6, v6

    .line 140
    new-instance v15, Landroid/graphics/Paint;

    .line 141
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 143
    const/high16 v10, -0x10000

    .line 146
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    int-to-float v14, v7

    .line 151
    int-to-float v13, v8

    .line 152
    add-int/2addr v7, v9

    .line 153
    int-to-float v7, v7

    .line 154
    move-object/from16 v10, p1

    .line 155
    move v11, v14

    .line 157
    move v12, v13

    .line 158
    move v9, v13

    .line 159
    move v13, v7

    .line 160
    move/from16 v16, v14

    .line 161
    move v14, v9

    .line 163
    move-object/from16 v17, v15

    .line 164
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    add-int/2addr v8, v6

    .line 169
    int-to-float v6, v8

    .line 170
    move v11, v7

    .line 171
    move v12, v9

    .line 172
    move v14, v6

    .line 173
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    move v12, v6

    .line 177
    move/from16 v13, v16

    .line 178
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    move/from16 v11, v16

    .line 183
    move v14, v9

    .line 185
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    const v8, -0xff0100

    .line 189
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    move v12, v9

    .line 195
    move v13, v7

    .line 196
    move v14, v6

    .line 197
    move-object v8, v15

    .line 198
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    move v12, v6

    .line 202
    move v14, v9

    .line 203
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 207
    goto/16 :goto_1

    .line 209
    :cond_3
    return-void
    .line 211
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getMinHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getOptimizationLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 4
    return p0
    .line 6
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 9
    const/4 v2, -0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 14
    move-result v1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 32
    iput-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 37
    const-string v3, "parent"

    .line 39
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 41
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 43
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 45
    if-nez v3, :cond_2

    .line 47
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 49
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 51
    :cond_2
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v1

    .line 58
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 62
    if-eqz v3, :cond_5

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 71
    check-cast v4, Landroid/view/View;

    .line 73
    if-eqz v4, :cond_3

    .line 75
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 77
    if-nez v5, :cond_4

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 81
    move-result v4

    .line 84
    if-eq v4, v2, :cond_4

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v5

    .line 94
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 98
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 99
    :cond_4
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 101
    if-nez v4, :cond_3

    .line 103
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 105
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 107
    goto :goto_1

    .line 109
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 110
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    return-object p0
    .line 119
.end method

.method public final getViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    return-object p0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object p0

    .line 40
    instance-of p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 41
    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 49
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 51
    return-object p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return-object p0
    .line 55
.end method

.method public final init(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 6
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 10
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 31
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 32
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 38
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    move v1, p3

    .line 43
    :goto_0
    if-ge v1, p2, :cond_7

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    move-result v2

    .line 49
    const/16 v3, 0x10

    .line 50
    if-ne v2, v3, :cond_0

    .line 52
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 54
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    move-result v2

    .line 59
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 60
    goto :goto_2

    .line 62
    :cond_0
    const/16 v3, 0x11

    .line 63
    if-ne v2, v3, :cond_1

    .line 65
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 67
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    move-result v2

    .line 72
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 73
    goto :goto_2

    .line 75
    :cond_1
    const/16 v3, 0xe

    .line 76
    if-ne v2, v3, :cond_2

    .line 78
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 80
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 82
    move-result v2

    .line 85
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 86
    goto :goto_2

    .line 88
    :cond_2
    const/16 v3, 0xf

    .line 89
    if-ne v2, v3, :cond_3

    .line 91
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 93
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 95
    move-result v2

    .line 98
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    const/16 v3, 0x71

    .line 102
    if-ne v2, v3, :cond_4

    .line 104
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    move-result v2

    .line 111
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 112
    goto :goto_2

    .line 114
    :cond_4
    const/16 v3, 0x38

    .line 115
    if-ne v2, v3, :cond_5

    .line 117
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 123
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_2

    .line 128
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 129
    goto :goto_2

    .line 131
    :cond_5
    const/16 v3, 0x22

    .line 132
    if-ne v2, v3, :cond_6

    .line 134
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    move-result v2

    .line 139
    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 140
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 142
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 147
    move-result-object v4

    .line 150
    invoke-virtual {v3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(ILandroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    goto :goto_1

    .line 154
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 155
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 157
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 159
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 165
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 167
    iput p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 169
    const/16 p0, 0x200

    .line 171
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 173
    move-result p0

    .line 176
    sput-boolean p0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 177
    return-void
    .line 179
.end method

.method public final isRtl()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    const/high16 v1, 0x400000

    .line 12
    and-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 24
    move-result p0

    .line 27
    if-ne v2, p0, :cond_1

    .line 28
    move v1, v2

    .line 30
    :cond_1
    return v1
    .line 31
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 6
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_3

    .line 12
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    if-ne v2, v3, :cond_0

    .line 32
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 34
    if-nez v2, :cond_0

    .line 36
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 38
    if-nez v2, :cond_0

    .line 40
    if-nez p2, :cond_0

    .line 42
    goto :goto_1

    .line 44
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsInPlaceholder:Z

    .line 45
    if-eqz v0, :cond_1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 50
    move-result v0

    .line 53
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 54
    move-result v2

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 58
    move-result v3

    .line 61
    add-int/2addr v3, v0

    .line 62
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 63
    move-result v1

    .line 66
    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 68
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 71
    if-eqz v4, :cond_2

    .line 73
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 75
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    .line 77
    move-result-object p5

    .line 80
    if-eqz p5, :cond_2

    .line 81
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 86
    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result p1

    .line 97
    if-lez p1, :cond_4

    .line 98
    :goto_2
    if-ge p3, p1, :cond_4

    .line 100
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 107
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 108
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout()V

    .line 110
    add-int/lit8 p3, p3, 0x1

    .line 113
    goto :goto_2

    .line 115
    :cond_4
    return-void
    .line 116
.end method

.method public onMeasure(II)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    or-int/2addr v0, v1

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 6
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v0

    .line 14
    move v3, v1

    .line 15
    :goto_0
    if-ge v3, v0, :cond_1

    .line 16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 22
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 34
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 36
    move-result v3

    .line 39
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 40
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 42
    if-eqz v0, :cond_17

    .line 44
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v0

    .line 51
    move v3, v1

    .line 52
    :goto_2
    if-ge v3, v0, :cond_3

    .line 53
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 59
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    move v0, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_2

    .line 69
    :cond_3
    move v0, v1

    .line 70
    :goto_3
    if-eqz v0, :cond_16

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 73
    move-result v9

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 77
    move-result v10

    .line 80
    move v3, v1

    .line 81
    :goto_4
    if-ge v3, v10, :cond_5

    .line 82
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v4

    .line 87
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    move-result-object v4

    .line 91
    if-nez v4, :cond_4

    .line 92
    goto :goto_5

    .line 94
    :cond_4
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 95
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_4

    .line 100
    :cond_5
    const/4 v3, -0x1

    .line 101
    if-eqz v9, :cond_b

    .line 102
    move v4, v1

    .line 104
    :goto_6
    if-ge v4, v10, :cond_b

    .line 105
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    move-result-object v5

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v6

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 115
    move-result v7

    .line 118
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 119
    move-result-object v6

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 123
    move-result v7

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v7

    .line 130
    invoke-virtual {p0, v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    const/16 v7, 0x2f

    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 136
    move-result v7

    .line 139
    if-eq v7, v3, :cond_6

    .line 140
    add-int/lit8 v7, v7, 0x1

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 147
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 148
    move-result v5

    .line 151
    if-nez v5, :cond_7

    .line 152
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 154
    goto :goto_7

    .line 156
    :cond_7
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 162
    check-cast v7, Landroid/view/View;

    .line 163
    if-nez v7, :cond_8

    .line 165
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v7

    .line 170
    if-eqz v7, :cond_8

    .line 171
    if-eq v7, p0, :cond_8

    .line 173
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    move-result-object v5

    .line 178
    if-ne v5, p0, :cond_8

    .line 179
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 181
    :cond_8
    if-ne v7, p0, :cond_9

    .line 184
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 186
    goto :goto_7

    .line 188
    :cond_9
    if-nez v7, :cond_a

    .line 189
    const/4 v5, 0x0

    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    move-result-object v5

    .line 196
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 197
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 199
    :goto_7
    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    add-int/lit8 v4, v4, 0x1

    .line 203
    goto :goto_6

    .line 205
    :cond_b
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 206
    if-eq v4, v3, :cond_d

    .line 208
    move v4, v1

    .line 210
    :goto_8
    if-ge v4, v10, :cond_d

    .line 211
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 213
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 217
    move-result v6

    .line 220
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 221
    if-ne v6, v7, :cond_c

    .line 223
    instance-of v6, v5, Landroidx/constraintlayout/widget/Constraints;

    .line 225
    if-eqz v6, :cond_c

    .line 227
    check-cast v5, Landroidx/constraintlayout/widget/Constraints;

    .line 229
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    .line 231
    move-result-object v5

    .line 234
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 235
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 237
    goto :goto_8

    .line 239
    :cond_d
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 240
    if-eqz v4, :cond_e

    .line 242
    invoke-virtual {v4, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 244
    :cond_e
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 247
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 256
    move-result v4

    .line 259
    if-lez v4, :cond_f

    .line 260
    move v5, v1

    .line 262
    :goto_9
    if-ge v5, v4, :cond_f

    .line 263
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v6

    .line 270
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 271
    invoke-virtual {v6, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 273
    add-int/lit8 v5, v5, 0x1

    .line 276
    goto :goto_9

    .line 278
    :cond_f
    move v4, v1

    .line 279
    :goto_a
    if-ge v4, v10, :cond_12

    .line 280
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 282
    move-result-object v5

    .line 285
    instance-of v6, v5, Landroidx/constraintlayout/widget/Placeholder;

    .line 286
    if-eqz v6, :cond_11

    .line 288
    check-cast v5, Landroidx/constraintlayout/widget/Placeholder;

    .line 290
    iget v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 292
    if-ne v6, v3, :cond_10

    .line 294
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    .line 296
    move-result v6

    .line 299
    if-nez v6, :cond_10

    .line 300
    iget v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 302
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_10
    iget v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 307
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 309
    move-result-object v6

    .line 312
    iput-object v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 313
    if-eqz v6, :cond_11

    .line 315
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 317
    move-result-object v6

    .line 320
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 321
    iput-boolean v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsInPlaceholder:Z

    .line 323
    iget-object v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 325
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 333
    goto :goto_a

    .line 335
    :cond_12
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 336
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 338
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 341
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 343
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 350
    move-result v3

    .line 353
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 354
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    move v2, v1

    .line 359
    :goto_b
    if-ge v2, v10, :cond_13

    .line 360
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 362
    move-result-object v3

    .line 365
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 366
    move-result-object v4

    .line 369
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 370
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 372
    move-result v3

    .line 375
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 379
    goto :goto_b

    .line 381
    :cond_13
    :goto_c
    if-ge v1, v10, :cond_16

    .line 382
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 384
    move-result-object v5

    .line 387
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 388
    move-result-object v6

    .line 391
    if-nez v6, :cond_14

    .line 392
    goto :goto_d

    .line 394
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 395
    move-result-object v2

    .line 398
    move-object v7, v2

    .line 399
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 400
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 402
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 409
    if-eqz v3, :cond_15

    .line 411
    check-cast v3, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 413
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 420
    :cond_15
    iput-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 423
    iget-object v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 425
    move-object v3, p0

    .line 427
    move v4, v9

    .line 428
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 429
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 432
    goto :goto_c

    .line 434
    :cond_16
    if-eqz v0, :cond_17

    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 437
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 439
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 441
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 444
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 451
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 453
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 458
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 460
    move-result v4

    .line 463
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 464
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 466
    move-result v5

    .line 469
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 470
    iget-boolean v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 472
    iget-boolean v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 474
    move-object v1, p0

    .line 476
    move v2, p1

    .line 477
    move v3, p2

    .line 478
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 479
    return-void
    .line 482
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    new-instance v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 24
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 26
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 31
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 33
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    .line 35
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 43
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 52
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 54
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 71
    move-result v1

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 78
    return-void
    .line 80
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 34
    return-void
    .line 36
.end method

.method public parseLayoutDescription(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 11
    return-void
    .line 13
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public final resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 2
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 4
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 6
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    .line 11
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    .line 15
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 19
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 24
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 30
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 36
    if-eqz p5, :cond_0

    .line 38
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 41
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 44
    return-void
    .line 47
.end method

.method public final resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v3

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v4

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v5

    .line 19
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 24
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 33
    move-result v9

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v9

    .line 40
    add-int v10, v7, v9

    .line 41
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    move-result v11

    .line 46
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 47
    iput v7, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 49
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 51
    iput v11, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 53
    iput v10, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 55
    move/from16 v9, p3

    .line 57
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 59
    move/from16 v9, p4

    .line 61
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 65
    move-result v9

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v9

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 73
    move-result v12

    .line 76
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v12

    .line 80
    if-gtz v9, :cond_1

    .line 81
    if-lez v12, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 86
    move-result v9

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 90
    move-result v9

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 95
    move-result v13

    .line 98
    if-eqz v13, :cond_2

    .line 99
    move v9, v12

    .line 101
    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    .line 102
    sub-int/2addr v6, v10

    .line 103
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 104
    iget v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 106
    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 108
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 112
    move-result v13

    .line 115
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    const/high16 v15, -0x80000000

    .line 118
    const/high16 v8, 0x40000000    # 2.0f

    .line 120
    if-eq v3, v15, :cond_6

    .line 122
    if-eqz v3, :cond_4

    .line 124
    if-eq v3, v8, :cond_3

    .line 126
    move-object v8, v12

    .line 128
    const/4 v15, 0x0

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 131
    sub-int/2addr v8, v10

    .line 133
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    .line 134
    move-result v8

    .line 137
    move-object/from16 p4, v12

    .line 138
    move v12, v15

    .line 140
    move v15, v8

    .line 141
    move-object/from16 v8, p4

    .line 142
    goto :goto_5

    .line 144
    :cond_4
    if-nez v13, :cond_5

    .line 145
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 147
    const/4 v15, 0x0

    .line 149
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 150
    move-result v8

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const/4 v15, 0x0

    .line 155
    move-object v8, v14

    .line 156
    :goto_2
    move-object/from16 p4, v12

    .line 157
    goto :goto_4

    .line 159
    :cond_6
    const/4 v15, 0x0

    .line 160
    if-nez v13, :cond_7

    .line 161
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 163
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 165
    move-result v8

    .line 168
    goto :goto_3

    .line 169
    :cond_7
    move v8, v4

    .line 170
    :goto_3
    move v15, v8

    .line 171
    move-object/from16 p4, v12

    .line 172
    move-object v8, v14

    .line 174
    :goto_4
    const/high16 v12, -0x80000000

    .line 175
    :goto_5
    if-eq v5, v12, :cond_b

    .line 177
    if-eqz v5, :cond_9

    .line 179
    const/high16 v12, 0x40000000    # 2.0f

    .line 181
    if-eq v5, v12, :cond_8

    .line 183
    move-object/from16 v12, p4

    .line 185
    const/4 v13, 0x0

    .line 187
    goto :goto_6

    .line 188
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 189
    sub-int/2addr v12, v11

    .line 191
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 192
    move-result v12

    .line 195
    move v13, v12

    .line 196
    move-object/from16 v17, v14

    .line 197
    move-object/from16 v12, p4

    .line 199
    goto :goto_8

    .line 201
    :cond_9
    if-nez v13, :cond_a

    .line 202
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 204
    const/4 v13, 0x0

    .line 206
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 207
    move-result v12

    .line 210
    goto :goto_7

    .line 211
    :cond_a
    const/4 v13, 0x0

    .line 212
    move-object v12, v14

    .line 213
    :goto_6
    move-object/from16 v17, v14

    .line 214
    goto :goto_8

    .line 216
    :cond_b
    const/4 v12, 0x0

    .line 217
    if-nez v13, :cond_c

    .line 218
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 220
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 222
    move-result v13

    .line 225
    move v12, v13

    .line 226
    goto :goto_7

    .line 227
    :cond_c
    move v12, v6

    .line 228
    :goto_7
    move v13, v12

    .line 229
    move-object v12, v14

    .line 230
    move-object/from16 v17, v12

    .line 231
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 233
    move-result v14

    .line 236
    move/from16 v18, v6

    .line 237
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 239
    if-ne v15, v14, :cond_d

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 243
    move-result v14

    .line 246
    if-eq v13, v14, :cond_e

    .line 247
    :cond_d
    const/4 v14, 0x1

    .line 249
    iput-boolean v14, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 250
    :cond_e
    const/4 v14, 0x0

    .line 252
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 253
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 255
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 257
    sub-int/2addr v14, v10

    .line 259
    move-object/from16 v20, v6

    .line 260
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 262
    move/from16 v21, v4

    .line 264
    const/4 v4, 0x0

    .line 266
    aput v14, v6, v4

    .line 267
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 269
    sub-int/2addr v14, v11

    .line 271
    const/16 v16, 0x1

    .line 272
    aput v14, v6, v16

    .line 274
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 276
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 278
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 280
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 283
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 286
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 289
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 292
    sub-int/2addr v4, v10

    .line 294
    if-gez v4, :cond_f

    .line 295
    const/4 v6, 0x0

    .line 297
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 298
    goto :goto_9

    .line 300
    :cond_f
    const/4 v6, 0x0

    .line 301
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 302
    :goto_9
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 304
    sub-int/2addr v0, v11

    .line 306
    if-gez v0, :cond_10

    .line 307
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 309
    goto :goto_a

    .line 311
    :cond_10
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 312
    :goto_a
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 314
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 316
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 323
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 327
    move-result v6

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 331
    move-result v7

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 335
    move-result v8

    .line 338
    const/16 v9, 0x80

    .line 339
    invoke-static {v2, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 341
    move-result v9

    .line 344
    const/16 v10, 0x40

    .line 345
    if-nez v9, :cond_12

    .line 347
    invoke-static {v2, v10}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 349
    move-result v2

    .line 352
    if-eqz v2, :cond_11

    .line 353
    goto :goto_b

    .line 355
    :cond_11
    const/4 v2, 0x0

    .line 356
    goto :goto_c

    .line 357
    :cond_12
    :goto_b
    const/4 v2, 0x1

    .line 358
    :goto_c
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 359
    const/4 v12, 0x0

    .line 361
    if-eqz v2, :cond_1b

    .line 362
    const/4 v13, 0x0

    .line 364
    :goto_d
    if-ge v13, v6, :cond_1b

    .line 365
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    move-result-object v14

    .line 372
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 373
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 375
    const/16 v16, 0x0

    .line 377
    aget-object v10, v15, v16

    .line 379
    if-ne v10, v11, :cond_13

    .line 381
    const/4 v10, 0x1

    .line 383
    goto :goto_e

    .line 384
    :cond_13
    const/4 v10, 0x0

    .line 385
    :goto_e
    const/16 v19, 0x1

    .line 386
    aget-object v15, v15, v19

    .line 388
    if-ne v15, v11, :cond_14

    .line 390
    const/4 v15, 0x1

    .line 392
    goto :goto_f

    .line 393
    :cond_14
    const/4 v15, 0x0

    .line 394
    :goto_f
    if-eqz v10, :cond_15

    .line 395
    if-eqz v15, :cond_15

    .line 397
    iget v10, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 399
    cmpl-float v10, v10, v12

    .line 401
    if-lez v10, :cond_15

    .line 403
    const/4 v10, 0x1

    .line 405
    goto :goto_10

    .line 406
    :cond_15
    const/4 v10, 0x0

    .line 407
    :goto_10
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 408
    move-result v15

    .line 411
    if-eqz v15, :cond_16

    .line 412
    if-eqz v10, :cond_16

    .line 414
    goto :goto_11

    .line 416
    :cond_16
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 417
    move-result v15

    .line 420
    if-eqz v15, :cond_17

    .line 421
    if-eqz v10, :cond_17

    .line 423
    goto :goto_11

    .line 425
    :cond_17
    instance-of v10, v14, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 426
    if-eqz v10, :cond_18

    .line 428
    goto :goto_11

    .line 430
    :cond_18
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 431
    move-result v10

    .line 434
    if-nez v10, :cond_1a

    .line 435
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 437
    move-result v10

    .line 440
    if-eqz v10, :cond_19

    .line 441
    goto :goto_11

    .line 443
    :cond_19
    add-int/lit8 v13, v13, 0x1

    .line 444
    const/16 v10, 0x40

    .line 446
    goto :goto_d

    .line 448
    :cond_1a
    :goto_11
    const/4 v2, 0x0

    .line 449
    :cond_1b
    const/high16 v10, 0x40000000    # 2.0f

    .line 450
    if-ne v3, v10, :cond_1c

    .line 452
    if-eq v5, v10, :cond_1d

    .line 454
    :cond_1c
    if-eqz v9, :cond_1e

    .line 456
    :cond_1d
    const/4 v10, 0x1

    .line 458
    goto :goto_12

    .line 459
    :cond_1e
    const/4 v10, 0x0

    .line 460
    :goto_12
    and-int/2addr v2, v10

    .line 461
    if-eqz v2, :cond_3d

    .line 462
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 464
    const/4 v13, 0x0

    .line 466
    aget v10, v10, v13

    .line 467
    move/from16 v13, v21

    .line 469
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    .line 471
    move-result v10

    .line 474
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 475
    const/4 v15, 0x1

    .line 477
    aget v13, v13, v15

    .line 478
    move/from16 v12, v18

    .line 480
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 482
    move-result v12

    .line 485
    const/high16 v13, 0x40000000    # 2.0f

    .line 486
    if-ne v3, v13, :cond_1f

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 490
    move-result v14

    .line 493
    if-eq v14, v10, :cond_1f

    .line 494
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 496
    move-object/from16 v10, v20

    .line 499
    iput-boolean v15, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 501
    goto :goto_13

    .line 503
    :cond_1f
    move-object/from16 v10, v20

    .line 504
    :goto_13
    if-ne v5, v13, :cond_20

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 508
    move-result v14

    .line 511
    if-eq v14, v12, :cond_20

    .line 512
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 514
    iput-boolean v15, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 517
    :cond_20
    if-ne v3, v13, :cond_36

    .line 519
    if-ne v5, v13, :cond_36

    .line 521
    and-int/2addr v9, v15

    .line 523
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 524
    iget-object v13, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 526
    if-nez v12, :cond_22

    .line 528
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 530
    if-eqz v12, :cond_21

    .line 532
    goto :goto_14

    .line 534
    :cond_21
    const/4 v12, 0x0

    .line 535
    goto :goto_16

    .line 536
    :cond_22
    :goto_14
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    move-result-object v12

    .line 542
    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    move-result v14

    .line 546
    if-eqz v14, :cond_23

    .line 547
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    move-result-object v14

    .line 552
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 553
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 555
    const/4 v15, 0x0

    .line 558
    iput-boolean v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 559
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 561
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 563
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 566
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 568
    goto :goto_15

    .line 571
    :cond_23
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 572
    const/4 v12, 0x0

    .line 575
    iput-boolean v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 576
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 578
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 580
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 583
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 585
    iput-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 588
    :goto_16
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 590
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 592
    iput v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 595
    iput v12, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 597
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 599
    move-result-object v14

    .line 602
    const/4 v12, 0x1

    .line 603
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 604
    move-result-object v15

    .line 607
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 608
    if-eqz v12, :cond_24

    .line 610
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 612
    :cond_24
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 615
    move-result v12

    .line 618
    move/from16 v20, v2

    .line 619
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 621
    move-result v2

    .line 624
    move-object/from16 v21, v4

    .line 625
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 627
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 629
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 631
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 634
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 636
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 638
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 641
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 644
    move/from16 v22, v7

    .line 646
    move-object/from16 v7, v17

    .line 648
    if-eq v14, v7, :cond_26

    .line 650
    if-ne v15, v7, :cond_25

    .line 652
    goto :goto_17

    .line 654
    :cond_25
    move-object/from16 v23, v0

    .line 655
    move/from16 v17, v8

    .line 657
    move-object/from16 v8, p4

    .line 659
    move-object/from16 p4, v11

    .line 661
    goto :goto_19

    .line 663
    :cond_26
    :goto_17
    if-eqz v9, :cond_28

    .line 664
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 666
    move-result-object v17

    .line 669
    :cond_27
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    move-result v23

    .line 673
    if-eqz v23, :cond_28

    .line 674
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    move-result-object v23

    .line 679
    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 680
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 682
    move-result v23

    .line 685
    if-nez v23, :cond_27

    .line 686
    const/4 v9, 0x0

    .line 688
    :cond_28
    if-eqz v9, :cond_29

    .line 689
    if-ne v14, v7, :cond_29

    .line 691
    move/from16 v17, v8

    .line 693
    move-object/from16 v8, p4

    .line 695
    invoke-virtual {v13, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 697
    move-object/from16 v23, v0

    .line 700
    move-object/from16 p4, v11

    .line 702
    const/4 v0, 0x0

    .line 704
    invoke-virtual {v10, v13, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 705
    move-result v11

    .line 708
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 709
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 712
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 714
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 716
    move-result v11

    .line 719
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 720
    goto :goto_18

    .line 723
    :cond_29
    move-object/from16 v23, v0

    .line 724
    move/from16 v17, v8

    .line 726
    move-object/from16 v8, p4

    .line 728
    move-object/from16 p4, v11

    .line 730
    :goto_18
    if-eqz v9, :cond_2a

    .line 732
    if-ne v15, v7, :cond_2a

    .line 734
    invoke-virtual {v13, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 736
    const/4 v0, 0x1

    .line 739
    invoke-virtual {v10, v13, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 740
    move-result v9

    .line 743
    invoke-virtual {v13, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 744
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 747
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 749
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 751
    move-result v9

    .line 754
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 755
    :cond_2a
    :goto_19
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 758
    const/4 v9, 0x0

    .line 760
    aget-object v0, v0, v9

    .line 761
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 763
    if-eq v0, v8, :cond_2c

    .line 765
    if-ne v0, v9, :cond_2b

    .line 767
    goto :goto_1a

    .line 769
    :cond_2b
    const/4 v0, 0x0

    .line 770
    goto :goto_1b

    .line 771
    :cond_2c
    :goto_1a
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 772
    move-result v0

    .line 775
    add-int/2addr v0, v12

    .line 776
    iget-object v11, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 777
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 779
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 781
    iget-object v11, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 784
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 786
    sub-int/2addr v0, v12

    .line 788
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 789
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 792
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 795
    const/4 v11, 0x1

    .line 797
    aget-object v0, v0, v11

    .line 798
    if-eq v0, v8, :cond_2d

    .line 800
    if-ne v0, v9, :cond_2e

    .line 802
    :cond_2d
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 804
    move-result v0

    .line 807
    add-int/2addr v0, v2

    .line 808
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 809
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 811
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 813
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 816
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 818
    sub-int/2addr v0, v2

    .line 820
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 821
    :cond_2e
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 824
    const/4 v0, 0x1

    .line 827
    :goto_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 828
    move-result-object v2

    .line 831
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 832
    move-result v9

    .line 835
    if-eqz v9, :cond_30

    .line 836
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 838
    move-result-object v9

    .line 841
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 842
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 844
    if-ne v10, v13, :cond_2f

    .line 846
    iget-boolean v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 848
    if-nez v10, :cond_2f

    .line 850
    goto :goto_1c

    .line 852
    :cond_2f
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 853
    goto :goto_1c

    .line 856
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 857
    move-result-object v2

    .line 860
    :cond_31
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 861
    move-result v4

    .line 864
    if-eqz v4, :cond_35

    .line 865
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 867
    move-result-object v4

    .line 870
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 871
    if-nez v0, :cond_32

    .line 873
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 875
    if-ne v9, v13, :cond_32

    .line 877
    goto :goto_1d

    .line 879
    :cond_32
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 880
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 882
    if-nez v9, :cond_33

    .line 884
    goto :goto_1e

    .line 886
    :cond_33
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 887
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 889
    if-nez v9, :cond_34

    .line 891
    instance-of v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 893
    if-nez v9, :cond_34

    .line 895
    goto :goto_1e

    .line 897
    :cond_34
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 898
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 900
    if-nez v9, :cond_31

    .line 902
    instance-of v9, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 904
    if-nez v9, :cond_31

    .line 906
    instance-of v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 908
    if-nez v4, :cond_31

    .line 910
    :goto_1e
    const/4 v0, 0x0

    .line 912
    goto :goto_1f

    .line 913
    :cond_35
    const/4 v0, 0x1

    .line 914
    :goto_1f
    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 915
    invoke-virtual {v13, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 918
    move v4, v0

    .line 921
    const/high16 v0, 0x40000000    # 2.0f

    .line 922
    const/4 v2, 0x2

    .line 924
    goto/16 :goto_23

    .line 925
    :cond_36
    move-object/from16 v23, v0

    .line 927
    move/from16 v20, v2

    .line 929
    move-object/from16 v21, v4

    .line 931
    move/from16 v22, v7

    .line 933
    move-object/from16 v7, v17

    .line 935
    move/from16 v17, v8

    .line 937
    move-object/from16 v8, p4

    .line 939
    move-object/from16 p4, v11

    .line 941
    iget-boolean v0, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 943
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 945
    if-eqz v0, :cond_38

    .line 947
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 949
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 951
    move-result-object v0

    .line 954
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 955
    move-result v4

    .line 958
    if-eqz v4, :cond_37

    .line 959
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 961
    move-result-object v4

    .line 964
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 965
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 967
    const/4 v11, 0x0

    .line 970
    iput-boolean v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 971
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 973
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 975
    iput-boolean v11, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 977
    iput-boolean v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 979
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 981
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 984
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 986
    iput-boolean v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 988
    iput-boolean v11, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 990
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 992
    goto :goto_20

    .line 995
    :cond_37
    const/4 v11, 0x0

    .line 996
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 997
    iput-boolean v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 1000
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1002
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1004
    iput-boolean v11, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1006
    iput-boolean v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 1008
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 1010
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1013
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1015
    iput-boolean v11, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1017
    iput-boolean v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 1019
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 1021
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 1024
    goto :goto_21

    .line 1027
    :cond_38
    const/4 v11, 0x0

    .line 1028
    :goto_21
    iget-object v0, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1029
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 1031
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1034
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1036
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1038
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1040
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1042
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1045
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1047
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1049
    const/high16 v0, 0x40000000    # 2.0f

    .line 1052
    if-ne v3, v0, :cond_39

    .line 1054
    invoke-virtual {v1, v11, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(IZ)Z

    .line 1056
    move-result v2

    .line 1059
    const/4 v4, 0x1

    .line 1060
    and-int/lit8 v19, v2, 0x1

    .line 1061
    move v2, v4

    .line 1063
    move/from16 v10, v19

    .line 1064
    goto :goto_22

    .line 1066
    :cond_39
    const/4 v4, 0x1

    .line 1067
    move v10, v4

    .line 1068
    const/4 v2, 0x0

    .line 1069
    :goto_22
    if-ne v5, v0, :cond_3a

    .line 1070
    invoke-virtual {v1, v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(IZ)Z

    .line 1072
    move-result v9

    .line 1075
    and-int v4, v9, v10

    .line 1076
    add-int/lit8 v2, v2, 0x1

    .line 1078
    goto :goto_23

    .line 1080
    :cond_3a
    move v4, v10

    .line 1081
    :goto_23
    if-eqz v4, :cond_3e

    .line 1082
    if-ne v3, v0, :cond_3b

    .line 1084
    const/4 v3, 0x1

    .line 1086
    goto :goto_24

    .line 1087
    :cond_3b
    const/4 v3, 0x0

    .line 1088
    :goto_24
    if-ne v5, v0, :cond_3c

    .line 1089
    const/4 v0, 0x1

    .line 1091
    goto :goto_25

    .line 1092
    :cond_3c
    const/4 v0, 0x0

    .line 1093
    :goto_25
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 1094
    goto :goto_26

    .line 1097
    :cond_3d
    move-object/from16 v23, v0

    .line 1098
    move/from16 v20, v2

    .line 1100
    move-object/from16 v21, v4

    .line 1102
    move/from16 v22, v7

    .line 1104
    move-object/from16 v7, v17

    .line 1106
    move/from16 v17, v8

    .line 1108
    move-object/from16 v8, p4

    .line 1110
    move-object/from16 p4, v11

    .line 1112
    const/4 v2, 0x0

    .line 1114
    const/4 v4, 0x0

    .line 1115
    :cond_3e
    :goto_26
    if-eqz v4, :cond_3f

    .line 1116
    const/4 v0, 0x2

    .line 1118
    if-eq v2, v0, :cond_6b

    .line 1119
    :cond_3f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1121
    const/16 v2, 0x8

    .line 1123
    if-lez v6, :cond_51

    .line 1125
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1127
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1129
    move-result v3

    .line 1132
    const/16 v4, 0x40

    .line 1133
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1135
    move-result v4

    .line 1138
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1139
    const/4 v9, 0x0

    .line 1141
    :goto_27
    if-ge v9, v3, :cond_4b

    .line 1142
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1144
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1146
    move-result-object v10

    .line 1149
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1150
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1152
    if-eqz v11, :cond_40

    .line 1154
    goto :goto_28

    .line 1156
    :cond_40
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1157
    if-eqz v11, :cond_41

    .line 1159
    goto :goto_28

    .line 1161
    :cond_41
    iget-boolean v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 1162
    if-eqz v11, :cond_42

    .line 1164
    goto :goto_28

    .line 1166
    :cond_42
    if-eqz v4, :cond_43

    .line 1167
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1169
    if-eqz v11, :cond_43

    .line 1171
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1173
    if-eqz v12, :cond_43

    .line 1175
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1177
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1179
    if-eqz v11, :cond_43

    .line 1181
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1183
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1185
    if-eqz v11, :cond_43

    .line 1187
    :goto_28
    move-object/from16 v14, p4

    .line 1189
    move-object/from16 v13, v23

    .line 1191
    const/4 v12, 0x0

    .line 1193
    goto :goto_2b

    .line 1194
    :cond_43
    const/4 v11, 0x0

    .line 1195
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1196
    move-result-object v12

    .line 1199
    const/4 v11, 0x1

    .line 1200
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1201
    move-result-object v13

    .line 1204
    move-object/from16 v14, p4

    .line 1205
    if-ne v12, v14, :cond_44

    .line 1207
    iget v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1209
    if-eq v15, v11, :cond_44

    .line 1211
    if-ne v13, v14, :cond_44

    .line 1213
    iget v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1215
    if-eq v15, v11, :cond_44

    .line 1217
    move v15, v11

    .line 1219
    goto :goto_29

    .line 1220
    :cond_44
    const/4 v15, 0x0

    .line 1221
    :goto_29
    if-nez v15, :cond_48

    .line 1222
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1224
    move-result v24

    .line 1227
    if-eqz v24, :cond_48

    .line 1228
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 1230
    if-nez v11, :cond_48

    .line 1232
    if-ne v12, v14, :cond_45

    .line 1234
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1236
    if-nez v11, :cond_45

    .line 1238
    if-eq v13, v14, :cond_45

    .line 1240
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 1242
    move-result v11

    .line 1245
    if-nez v11, :cond_45

    .line 1246
    const/4 v15, 0x1

    .line 1248
    :cond_45
    if-ne v13, v14, :cond_46

    .line 1249
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1251
    if-nez v11, :cond_46

    .line 1253
    if-eq v12, v14, :cond_46

    .line 1255
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 1257
    move-result v11

    .line 1260
    if-nez v11, :cond_46

    .line 1261
    const/4 v15, 0x1

    .line 1263
    :cond_46
    if-eq v12, v14, :cond_47

    .line 1264
    if-ne v13, v14, :cond_48

    .line 1266
    :cond_47
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1268
    const/4 v12, 0x0

    .line 1270
    cmpl-float v11, v11, v12

    .line 1271
    if-lez v11, :cond_49

    .line 1273
    const/4 v15, 0x1

    .line 1275
    goto :goto_2a

    .line 1276
    :cond_48
    const/4 v12, 0x0

    .line 1277
    :cond_49
    :goto_2a
    if-eqz v15, :cond_4a

    .line 1278
    move-object/from16 v13, v23

    .line 1280
    goto :goto_2b

    .line 1282
    :cond_4a
    move-object/from16 v13, v23

    .line 1283
    const/4 v11, 0x0

    .line 1285
    invoke-virtual {v13, v11, v10, v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)Z

    .line 1286
    :goto_2b
    add-int/lit8 v9, v9, 0x1

    .line 1289
    move-object/from16 v23, v13

    .line 1291
    move-object/from16 p4, v14

    .line 1293
    goto/16 :goto_27

    .line 1295
    :cond_4b
    move-object/from16 v13, v23

    .line 1297
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1299
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1301
    move-result v4

    .line 1304
    const/4 v15, 0x0

    .line 1305
    :goto_2c
    if-ge v15, v4, :cond_50

    .line 1306
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1308
    move-result-object v5

    .line 1311
    instance-of v9, v5, Landroidx/constraintlayout/widget/Placeholder;

    .line 1312
    if-eqz v9, :cond_4f

    .line 1314
    check-cast v5, Landroidx/constraintlayout/widget/Placeholder;

    .line 1316
    iget-object v9, v5, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 1318
    if-nez v9, :cond_4c

    .line 1320
    goto :goto_2d

    .line 1322
    :cond_4c
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1323
    move-result-object v9

    .line 1326
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1327
    iget-object v5, v5, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 1329
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1331
    move-result-object v5

    .line 1334
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1335
    iget-object v10, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1337
    const/4 v11, 0x0

    .line 1339
    iput v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1340
    iget-object v12, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1342
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1344
    aget-object v14, v14, v11

    .line 1346
    if-eq v14, v8, :cond_4d

    .line 1348
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1350
    move-result v10

    .line 1353
    invoke-virtual {v12, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1354
    :cond_4d
    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1357
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1359
    const/4 v11, 0x1

    .line 1361
    aget-object v10, v10, v11

    .line 1362
    if-eq v10, v8, :cond_4e

    .line 1364
    iget-object v10, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1366
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1368
    move-result v10

    .line 1371
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1372
    :cond_4e
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1375
    iput v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1377
    :cond_4f
    :goto_2d
    add-int/lit8 v15, v15, 0x1

    .line 1379
    goto :goto_2c

    .line 1381
    :cond_50
    iget-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 1382
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1384
    move-result v4

    .line 1387
    if-lez v4, :cond_52

    .line 1388
    const/4 v15, 0x0

    .line 1390
    :goto_2e
    if-ge v15, v4, :cond_52

    .line 1391
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 1393
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    move-result-object v5

    .line 1398
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1399
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    add-int/lit8 v15, v15, 0x1

    .line 1404
    goto :goto_2e

    .line 1406
    :cond_51
    move-object/from16 v13, v23

    .line 1407
    :cond_52
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 1409
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1412
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1414
    move-result v4

    .line 1417
    if-lez v6, :cond_53

    .line 1418
    move/from16 v6, v17

    .line 1420
    move/from16 v5, v22

    .line 1422
    const/4 v15, 0x0

    .line 1424
    invoke-virtual {v13, v1, v15, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 1425
    goto :goto_2f

    .line 1428
    :cond_53
    move/from16 v6, v17

    .line 1429
    move/from16 v5, v22

    .line 1431
    const/4 v15, 0x0

    .line 1433
    :goto_2f
    if-lez v4, :cond_6a

    .line 1434
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1436
    aget-object v9, v8, v15

    .line 1438
    if-ne v9, v7, :cond_54

    .line 1440
    const/4 v9, 0x1

    .line 1442
    goto :goto_30

    .line 1443
    :cond_54
    move v9, v15

    .line 1444
    :goto_30
    const/4 v10, 0x1

    .line 1445
    aget-object v8, v8, v10

    .line 1446
    if-ne v8, v7, :cond_55

    .line 1448
    const/4 v7, 0x1

    .line 1450
    goto :goto_31

    .line 1451
    :cond_55
    move v7, v15

    .line 1452
    :goto_31
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1453
    move-result v8

    .line 1456
    iget-object v10, v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mConstraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1457
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 1459
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 1461
    move-result v8

    .line 1464
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1465
    move-result v11

    .line 1468
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 1469
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 1471
    move-result v10

    .line 1474
    move v11, v15

    .line 1475
    move v12, v11

    .line 1476
    :goto_32
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1477
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1479
    if-ge v11, v4, :cond_5b

    .line 1481
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1483
    move-result-object v17

    .line 1486
    move-object/from16 v2, v17

    .line 1487
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1489
    move/from16 v17, v0

    .line 1491
    instance-of v0, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 1493
    if-nez v0, :cond_56

    .line 1495
    move/from16 v22, v5

    .line 1497
    move-object/from16 v5, v21

    .line 1499
    move/from16 v21, v6

    .line 1501
    goto/16 :goto_35

    .line 1503
    :cond_56
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1505
    move-result v0

    .line 1508
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1509
    move-result v1

    .line 1512
    move/from16 v22, v5

    .line 1513
    move-object/from16 v5, v21

    .line 1515
    move/from16 v21, v6

    .line 1517
    const/4 v6, 0x1

    .line 1519
    invoke-virtual {v13, v6, v2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)Z

    .line 1520
    move-result v23

    .line 1523
    or-int v6, v12, v23

    .line 1524
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1526
    move-result v12

    .line 1529
    move/from16 p2, v6

    .line 1530
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1532
    move-result v6

    .line 1535
    if-eq v12, v0, :cond_58

    .line 1536
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1538
    if-eqz v9, :cond_57

    .line 1541
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1543
    move-result v0

    .line 1546
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1547
    add-int/2addr v0, v12

    .line 1549
    if-le v0, v8, :cond_57

    .line 1550
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1552
    move-result v0

    .line 1555
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1556
    add-int/2addr v0, v12

    .line 1558
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1559
    move-result-object v12

    .line 1562
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1563
    move-result v12

    .line 1566
    add-int/2addr v12, v0

    .line 1567
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 1568
    move-result v8

    .line 1571
    :cond_57
    const/4 v0, 0x1

    .line 1572
    goto :goto_33

    .line 1573
    :cond_58
    move/from16 v0, p2

    .line 1574
    :goto_33
    if-eq v6, v1, :cond_5a

    .line 1576
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1578
    if-eqz v7, :cond_59

    .line 1581
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1583
    move-result v0

    .line 1586
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1587
    add-int/2addr v0, v1

    .line 1589
    if-le v0, v10, :cond_59

    .line 1590
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1592
    move-result v0

    .line 1595
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1596
    add-int/2addr v0, v1

    .line 1598
    invoke-virtual {v2, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1599
    move-result-object v1

    .line 1602
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1603
    move-result v1

    .line 1606
    add-int/2addr v1, v0

    .line 1607
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 1608
    move-result v0

    .line 1611
    move v10, v0

    .line 1612
    :cond_59
    const/4 v14, 0x1

    .line 1613
    goto :goto_34

    .line 1614
    :cond_5a
    move v14, v0

    .line 1615
    :goto_34
    check-cast v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 1616
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 1618
    or-int/2addr v0, v14

    .line 1620
    move v12, v0

    .line 1621
    :goto_35
    add-int/lit8 v11, v11, 0x1

    .line 1622
    move-object/from16 v1, p1

    .line 1624
    move/from16 v0, v17

    .line 1626
    move/from16 v6, v21

    .line 1628
    const/16 v2, 0x8

    .line 1630
    const/4 v15, 0x0

    .line 1632
    move-object/from16 v21, v5

    .line 1633
    move/from16 v5, v22

    .line 1635
    goto/16 :goto_32

    .line 1637
    :cond_5b
    move/from16 v17, v0

    .line 1639
    move/from16 v22, v5

    .line 1641
    move-object/from16 v5, v21

    .line 1643
    move/from16 v21, v6

    .line 1645
    const/4 v0, 0x0

    .line 1647
    const/4 v1, 0x2

    .line 1648
    :goto_36
    if-ge v0, v1, :cond_69

    .line 1649
    const/4 v2, 0x0

    .line 1651
    :goto_37
    if-ge v2, v4, :cond_68

    .line 1652
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1654
    move-result-object v6

    .line 1657
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1658
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/Helper;

    .line 1660
    if-eqz v11, :cond_5c

    .line 1662
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 1664
    if-eqz v11, :cond_5d

    .line 1666
    :cond_5c
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1668
    if-eqz v11, :cond_5e

    .line 1670
    :cond_5d
    const/16 v1, 0x8

    .line 1672
    goto :goto_38

    .line 1674
    :cond_5e
    iget v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1675
    const/16 v1, 0x8

    .line 1677
    if-ne v11, v1, :cond_5f

    .line 1679
    goto :goto_38

    .line 1681
    :cond_5f
    if-eqz v20, :cond_60

    .line 1682
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1684
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1686
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1688
    if-eqz v11, :cond_60

    .line 1690
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1692
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1694
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1696
    if-eqz v11, :cond_60

    .line 1698
    goto :goto_38

    .line 1700
    :cond_60
    instance-of v11, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 1701
    if-eqz v11, :cond_61

    .line 1703
    :goto_38
    move-object/from16 v23, v3

    .line 1705
    move/from16 p2, v4

    .line 1707
    goto/16 :goto_3a

    .line 1709
    :cond_61
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1711
    move-result v11

    .line 1714
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1715
    move-result v1

    .line 1718
    move-object/from16 v23, v3

    .line 1719
    iget v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1721
    move/from16 p2, v4

    .line 1723
    const/4 v4, 0x1

    .line 1725
    if-ne v0, v4, :cond_62

    .line 1726
    const/4 v4, 0x2

    .line 1728
    :cond_62
    invoke-virtual {v13, v4, v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)Z

    .line 1729
    move-result v4

    .line 1732
    or-int/2addr v4, v12

    .line 1733
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1734
    move-result v12

    .line 1737
    move/from16 p3, v4

    .line 1738
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1740
    move-result v4

    .line 1743
    if-eq v12, v11, :cond_64

    .line 1744
    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1746
    if-eqz v9, :cond_63

    .line 1749
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1751
    move-result v11

    .line 1754
    iget v12, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1755
    add-int/2addr v11, v12

    .line 1757
    if-le v11, v8, :cond_63

    .line 1758
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1760
    move-result v11

    .line 1763
    iget v12, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1764
    add-int/2addr v11, v12

    .line 1766
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1767
    move-result-object v12

    .line 1770
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1771
    move-result v12

    .line 1774
    add-int/2addr v12, v11

    .line 1775
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 1776
    move-result v8

    .line 1779
    :cond_63
    const/4 v11, 0x1

    .line 1780
    goto :goto_39

    .line 1781
    :cond_64
    move/from16 v11, p3

    .line 1782
    :goto_39
    if-eq v4, v1, :cond_66

    .line 1784
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1786
    if-eqz v7, :cond_65

    .line 1789
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1791
    move-result v1

    .line 1794
    iget v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1795
    add-int/2addr v1, v4

    .line 1797
    if-le v1, v10, :cond_65

    .line 1798
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1800
    move-result v1

    .line 1803
    iget v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1804
    add-int/2addr v1, v4

    .line 1806
    invoke-virtual {v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1807
    move-result-object v4

    .line 1810
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1811
    move-result v4

    .line 1814
    add-int/2addr v4, v1

    .line 1815
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 1816
    move-result v1

    .line 1819
    move v10, v1

    .line 1820
    :cond_65
    const/4 v11, 0x1

    .line 1821
    :cond_66
    iget-boolean v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 1822
    if-eqz v1, :cond_67

    .line 1824
    iget v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1826
    if-eq v3, v1, :cond_67

    .line 1828
    const/4 v12, 0x1

    .line 1830
    goto :goto_3a

    .line 1831
    :cond_67
    move v12, v11

    .line 1832
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    .line 1833
    move/from16 v4, p2

    .line 1835
    move-object/from16 v3, v23

    .line 1837
    const/4 v1, 0x2

    .line 1839
    goto/16 :goto_37

    .line 1840
    :cond_68
    move-object/from16 v23, v3

    .line 1842
    move/from16 p2, v4

    .line 1844
    if-eqz v12, :cond_69

    .line 1846
    add-int/lit8 v0, v0, 0x1

    .line 1848
    move-object/from16 v1, p1

    .line 1850
    move/from16 v3, v21

    .line 1852
    move/from16 v2, v22

    .line 1854
    invoke-virtual {v13, v1, v0, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 1856
    move/from16 v4, p2

    .line 1859
    move-object/from16 v3, v23

    .line 1861
    const/4 v1, 0x2

    .line 1863
    const/4 v12, 0x0

    .line 1864
    goto/16 :goto_36

    .line 1865
    :cond_69
    move-object/from16 v1, p1

    .line 1867
    goto :goto_3b

    .line 1869
    :cond_6a
    move/from16 v17, v0

    .line 1870
    :goto_3b
    move/from16 v0, v17

    .line 1872
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1874
    const/16 v0, 0x200

    .line 1876
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1878
    move-result v0

    .line 1881
    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 1882
    :cond_6b
    return-void
    .line 1884
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    return-void
    .line 4
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_2

    .line 2
    instance-of p1, p2, Ljava/lang/String;

    .line 4
    if-eqz p1, :cond_2

    .line 6
    instance-of p1, p3, Ljava/lang/Integer;

    .line 8
    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 12
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 21
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 23
    const-string p1, "/"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .line 40
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p1

    .line 45
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    return-void
    .line 55
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
    .line 23
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 6
    const/16 p1, 0x200

    .line 8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 10
    move-result p0

    .line 13
    sput-boolean p0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 14
    return-void
    .line 16
.end method

.method public setState(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    int-to-float p2, p2

    .line 6
    int-to-float p3, p3

    .line 7
    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(FFI)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 13
    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    if-eqz p3, :cond_1

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 24
    if-eqz p4, :cond_1

    .line 26
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 29
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 31
    if-ne p5, v0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 39
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 41
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    iput-boolean p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 45
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 51
    move-result-object p3

    .line 54
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 55
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 57
    invoke-virtual {p0, p3, p5, p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 59
    iput-boolean p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 62
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 64
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 70
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 73
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 75
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 79
    :cond_1
    return-void
    .line 82
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    return p0
    .line 4
.end method
