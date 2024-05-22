.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 2
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 21
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 24
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v1, :cond_6

    .line 28
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v5

    .line 37
    check-cast v5, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 40
    move-result v6

    .line 43
    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 44
    if-eqz v7, :cond_2

    .line 46
    const/4 v7, -0x1

    .line 48
    if-eq v6, v7, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 52
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 54
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 59
    :cond_2
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v7

    .line 63
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    move-result v7

    .line 67
    if-nez v7, :cond_3

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v7

    .line 73
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 74
    invoke-direct {v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 76
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v7

    .line 85
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v7

    .line 89
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 90
    if-nez v7, :cond_4

    .line 92
    goto :goto_2

    .line 94
    :cond_4
    instance-of v8, v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 95
    if-eqz v8, :cond_5

    .line 97
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 99
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 101
    instance-of v8, v4, Landroidx/constraintlayout/widget/Barrier;

    .line 104
    if-eqz v8, :cond_5

    .line 106
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 108
    const/4 v9, 0x1

    .line 110
    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 111
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 113
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 115
    move-result v9

    .line 118
    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 119
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 121
    move-result-object v9

    .line 124
    iput-object v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 125
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 127
    move-result v4

    .line 130
    iput v4, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 131
    :cond_5
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 133
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 136
    goto :goto_0

    .line 138
    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 139
    return-object p0
    .line 141
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
