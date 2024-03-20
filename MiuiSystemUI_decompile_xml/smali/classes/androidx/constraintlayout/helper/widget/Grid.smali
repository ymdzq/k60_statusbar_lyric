.class public Landroidx/constraintlayout/helper/widget/Grid;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBoxViewIds:[I

.field public mBoxViews:[Landroid/view/View;

.field public mColumns:I

.field public mColumnsSet:I

.field public mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mHorizontalGaps:F

.field public mNextAvailableIndex:I

.field public mOrientation:I

.field public mPositionMatrix:[[Z

.field public mRows:I

.field public mRowsSet:I

.field public final mSpanIds:Ljava/util/Set;

.field public mStrColumnWeights:Ljava/lang/String;

.field public mStrRowWeights:Ljava/lang/String;

.field public mStrSkips:Ljava/lang/String;

.field public mStrSpans:Ljava/lang/String;

.field public mValidateInputs:Z

.field public mVerticalGaps:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method public static clearHParams(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 10
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 13
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 15
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 17
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
    .line 26
.end method

.method public static clearVParams(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 10
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 13
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 15
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 17
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
    .line 26
.end method

.method private getNextPosition()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-nez v1, :cond_2

    .line 5
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 7
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 9
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 11
    mul-int/2addr v3, v4

    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    .line 18
    move-result v3

    .line 21
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 22
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    .line 24
    move-result v4

    .line 27
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 28
    aget-object v3, v5, v3

    .line 30
    aget-boolean v5, v3, v4

    .line 32
    const/4 v6, 0x1

    .line 34
    if-eqz v5, :cond_1

    .line 35
    aput-boolean v0, v3, v4

    .line 37
    move v1, v6

    .line 39
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 40
    add-int/2addr v3, v6

    .line 42
    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    return v2
    .line 46
.end method

.method public static params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    return-object p0
    .line 8
.end method

.method public static parseSpans(Ljava/lang/String;)[[I
    .locals 7

    .line 1
    const-string v0, ","

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x3

    .line 9
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, [[I

    .line 20
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    array-length v3, p0

    .line 24
    if-ge v2, v3, :cond_0

    .line 25
    aget-object v3, p0, v2

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    const-string v4, ":"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    aget-object v5, v3, v4

    .line 40
    const-string/jumbo v6, "x"

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 48
    aget-object v6, v0, v2

    .line 49
    aget-object v3, v3, v1

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    move-result v3

    .line 56
    aput v3, v6, v1

    .line 57
    aget-object v3, v0, v2

    .line 59
    aget-object v6, v5, v1

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    move-result v6

    .line 66
    aput v6, v3, v4

    .line 67
    aget-object v3, v0, v2

    .line 69
    aget-object v4, v5, v4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    move-result v4

    .line 76
    const/4 v5, 0x2

    .line 77
    aput v4, v3, v5

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_0
    return-object v0
    .line 83
.end method

.method public static parseWeights(ILjava/lang/String;)[F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    const-string v1, ","

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    array-length v1, p1

    .line 22
    if-eq v1, p0, :cond_1

    .line 23
    return-object v0

    .line 25
    :cond_1
    new-array v0, p0, [F

    .line 26
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, p0, :cond_2

    .line 29
    aget-object v2, p1, v1

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 37
    move-result v2

    .line 40
    aput v2, v0, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-object v0
    .line 46
.end method


# virtual methods
.method public final connectView(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 8
    aget v1, p0, p3

    .line 10
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 12
    aget v1, p0, p2

    .line 14
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 16
    add-int/2addr p3, p5

    .line 18
    add-int/lit8 p3, p3, -0x1

    .line 19
    aget p3, p0, p3

    .line 21
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 23
    add-int/2addr p2, p4

    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    aget p0, p0, p2

    .line 28
    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    return-void
    .line 35
.end method

.method public final generateGrid(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    if-eqz v0, :cond_1e

    .line 4
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_1e

    .line 9
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 11
    if-ge v0, v1, :cond_0

    .line 13
    goto/16 :goto_17

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_3

    .line 18
    move p1, v0

    .line 20
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 21
    array-length v2, v2

    .line 23
    if-ge p1, v2, :cond_2

    .line 24
    move v2, v0

    .line 26
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 27
    aget-object v4, v3, v0

    .line 29
    array-length v4, v4

    .line 31
    if-ge v2, v4, :cond_1

    .line 32
    aget-object v3, v3, p1

    .line 34
    aput-boolean v1, v3, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    .line 44
    check-cast p1, Ljava/util/HashSet;

    .line 46
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 48
    :cond_3
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 51
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 53
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 55
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result p1

    .line 60
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 61
    if-nez v2, :cond_4

    .line 63
    new-array v2, p1, [Landroid/view/View;

    .line 65
    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 67
    move v2, v0

    .line 69
    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 70
    array-length v4, v3

    .line 72
    if-ge v2, v4, :cond_8

    .line 73
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->makeNewView()Landroid/view/View;

    .line 75
    move-result-object v4

    .line 78
    aput-object v4, v3, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_2

    .line 83
    :cond_4
    array-length v2, v2

    .line 84
    if-eq p1, v2, :cond_8

    .line 85
    new-array v2, p1, [Landroid/view/View;

    .line 87
    move v3, v0

    .line 89
    :goto_3
    if-ge v3, p1, :cond_6

    .line 90
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 92
    array-length v5, v4

    .line 94
    if-ge v3, v5, :cond_5

    .line 95
    aget-object v4, v4, v3

    .line 97
    aput-object v4, v2, v3

    .line 99
    goto :goto_4

    .line 101
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->makeNewView()Landroid/view/View;

    .line 102
    move-result-object v4

    .line 105
    aput-object v4, v2, v3

    .line 106
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 108
    goto :goto_3

    .line 110
    :cond_6
    move v3, p1

    .line 111
    :goto_5
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 112
    array-length v5, v4

    .line 114
    if-ge v3, v5, :cond_7

    .line 115
    aget-object v4, v4, v3

    .line 117
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 124
    goto :goto_5

    .line 126
    :cond_7
    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 127
    :cond_8
    new-array p1, p1, [I

    .line 129
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 131
    move p1, v0

    .line 133
    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 134
    array-length v3, v2

    .line 136
    if-ge p1, v3, :cond_9

    .line 137
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 139
    aget-object v2, v2, p1

    .line 141
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 143
    move-result v2

    .line 146
    aput v2, v3, p1

    .line 147
    add-int/lit8 p1, p1, 0x1

    .line 149
    goto :goto_6

    .line 151
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 152
    move-result p1

    .line 155
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 156
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 158
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 160
    move-result v2

    .line 163
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    .line 166
    invoke-static {v3, v4}, Landroidx/constraintlayout/helper/widget/Grid;->parseWeights(ILjava/lang/String;)[F

    .line 168
    move-result-object v3

    .line 171
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 172
    if-ne v4, v1, :cond_a

    .line 174
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 176
    aget-object v2, v2, v0

    .line 178
    invoke-static {v2}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 180
    move-result-object v2

    .line 183
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 184
    aget-object v3, v3, v0

    .line 186
    invoke-static {v3}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    .line 188
    iput p1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 191
    iput p1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 193
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 195
    aget-object p1, p1, v0

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    goto :goto_b

    .line 202
    :cond_a
    move v4, v0

    .line 203
    :goto_7
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 204
    if-ge v4, v5, :cond_f

    .line 206
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 208
    aget-object v5, v5, v4

    .line 210
    invoke-static {v5}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 212
    move-result-object v5

    .line 215
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 216
    aget-object v6, v6, v4

    .line 218
    invoke-static {v6}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    .line 220
    if-eqz v3, :cond_b

    .line 223
    aget v6, v3, v4

    .line 225
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 227
    :cond_b
    if-lez v4, :cond_c

    .line 229
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 231
    add-int/lit8 v7, v4, -0x1

    .line 233
    aget v6, v6, v7

    .line 235
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 237
    goto :goto_8

    .line 239
    :cond_c
    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 240
    :goto_8
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 242
    sub-int/2addr v6, v1

    .line 244
    if-ge v4, v6, :cond_d

    .line 245
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 247
    add-int/lit8 v7, v4, 0x1

    .line 249
    aget v6, v6, v7

    .line 251
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 253
    goto :goto_9

    .line 255
    :cond_d
    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 256
    :goto_9
    if-lez v4, :cond_e

    .line 258
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 260
    float-to-int v6, v6

    .line 262
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 263
    :cond_e
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 265
    aget-object v6, v6, v4

    .line 267
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    add-int/lit8 v4, v4, 0x1

    .line 272
    goto :goto_7

    .line 274
    :cond_f
    :goto_a
    if-ge v5, v2, :cond_10

    .line 275
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 277
    aget-object v3, v3, v5

    .line 279
    invoke-static {v3}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 281
    move-result-object v3

    .line 284
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 285
    aget-object v4, v4, v5

    .line 287
    invoke-static {v4}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    .line 289
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 292
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 294
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 296
    aget-object v4, v4, v5

    .line 298
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    add-int/lit8 v5, v5, 0x1

    .line 303
    goto :goto_a

    .line 305
    :cond_10
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 306
    move-result p1

    .line 309
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 310
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 312
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 314
    move-result v2

    .line 317
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 318
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    .line 320
    invoke-static {v3, v4}, Landroidx/constraintlayout/helper/widget/Grid;->parseWeights(ILjava/lang/String;)[F

    .line 322
    move-result-object v3

    .line 325
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 326
    aget-object v4, v4, v0

    .line 328
    invoke-static {v4}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 330
    move-result-object v4

    .line 333
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 334
    if-ne v5, v1, :cond_11

    .line 336
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 338
    aget-object v2, v2, v0

    .line 340
    invoke-static {v2}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    .line 342
    iput p1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 345
    iput p1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 347
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 349
    aget-object p1, p1, v0

    .line 351
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    goto :goto_10

    .line 356
    :cond_11
    move v4, v0

    .line 357
    :goto_c
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 358
    if-ge v4, v5, :cond_16

    .line 360
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 362
    aget-object v5, v5, v4

    .line 364
    invoke-static {v5}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 366
    move-result-object v5

    .line 369
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 370
    aget-object v6, v6, v4

    .line 372
    invoke-static {v6}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    .line 374
    if-eqz v3, :cond_12

    .line 377
    aget v6, v3, v4

    .line 379
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 381
    :cond_12
    if-lez v4, :cond_13

    .line 383
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 385
    add-int/lit8 v7, v4, -0x1

    .line 387
    aget v6, v6, v7

    .line 389
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 391
    goto :goto_d

    .line 393
    :cond_13
    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 394
    :goto_d
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 396
    sub-int/2addr v6, v1

    .line 398
    if-ge v4, v6, :cond_14

    .line 399
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 401
    add-int/lit8 v7, v4, 0x1

    .line 403
    aget v6, v6, v7

    .line 405
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 407
    goto :goto_e

    .line 409
    :cond_14
    iput p1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 410
    :goto_e
    if-lez v4, :cond_15

    .line 412
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 414
    float-to-int v6, v6

    .line 416
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 417
    :cond_15
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 419
    aget-object v6, v6, v4

    .line 421
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 426
    goto :goto_c

    .line 428
    :cond_16
    :goto_f
    if-ge v5, v2, :cond_17

    .line 429
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 431
    aget-object v3, v3, v5

    .line 433
    invoke-static {v3}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 435
    move-result-object v3

    .line 438
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 439
    aget-object v4, v4, v5

    .line 441
    invoke-static {v4}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    .line 443
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 446
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 448
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 450
    aget-object v4, v4, v5

    .line 452
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    add-int/lit8 v5, v5, 0x1

    .line 457
    goto :goto_f

    .line 459
    :cond_17
    :goto_10
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 460
    const/4 v2, 0x2

    .line 462
    if-eqz p1, :cond_19

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 465
    move-result-object p1

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 469
    move-result p1

    .line 472
    if-nez p1, :cond_19

    .line 473
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 475
    invoke-static {p1}, Landroidx/constraintlayout/helper/widget/Grid;->parseSpans(Ljava/lang/String;)[[I

    .line 477
    move-result-object p1

    .line 480
    if-eqz p1, :cond_19

    .line 481
    move v3, v0

    .line 483
    :goto_11
    array-length v4, p1

    .line 484
    if-ge v3, v4, :cond_19

    .line 485
    aget-object v4, p1, v3

    .line 487
    aget v4, v4, v0

    .line 489
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    .line 491
    move-result v4

    .line 494
    aget-object v5, p1, v3

    .line 495
    aget v5, v5, v0

    .line 497
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    .line 499
    move-result v5

    .line 502
    aget-object v6, p1, v3

    .line 503
    aget v7, v6, v1

    .line 505
    aget v6, v6, v2

    .line 507
    invoke-virtual {p0, v4, v5, v7, v6}, Landroidx/constraintlayout/helper/widget/Grid;->invalidatePositions(IIII)Z

    .line 509
    move-result v4

    .line 512
    if-nez v4, :cond_18

    .line 513
    goto :goto_12

    .line 515
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 516
    goto :goto_11

    .line 518
    :cond_19
    :goto_12
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 519
    if-eqz p1, :cond_1b

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 523
    move-result-object p1

    .line 526
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 527
    move-result p1

    .line 530
    if-nez p1, :cond_1b

    .line 531
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 533
    invoke-static {p1}, Landroidx/constraintlayout/helper/widget/Grid;->parseSpans(Ljava/lang/String;)[[I

    .line 535
    move-result-object p1

    .line 538
    if-eqz p1, :cond_1b

    .line 539
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 541
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 543
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 545
    move-result-object v4

    .line 548
    move v5, v0

    .line 549
    :goto_13
    array-length v6, p1

    .line 550
    if-ge v5, v6, :cond_1b

    .line 551
    aget-object v6, p1, v5

    .line 553
    aget v6, v6, v0

    .line 555
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    .line 557
    move-result v9

    .line 560
    aget-object v6, p1, v5

    .line 561
    aget v6, v6, v0

    .line 563
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    .line 565
    move-result v10

    .line 568
    aget-object v6, p1, v5

    .line 569
    aget v7, v6, v1

    .line 571
    aget v6, v6, v2

    .line 573
    invoke-virtual {p0, v9, v10, v7, v6}, Landroidx/constraintlayout/helper/widget/Grid;->invalidatePositions(IIII)Z

    .line 575
    move-result v6

    .line 578
    if-nez v6, :cond_1a

    .line 579
    goto :goto_14

    .line 581
    :cond_1a
    aget-object v8, v4, v5

    .line 582
    aget-object v6, p1, v5

    .line 584
    aget v11, v6, v1

    .line 586
    aget v12, v6, v2

    .line 588
    move-object v7, p0

    .line 590
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/helper/widget/Grid;->connectView(Landroid/view/View;IIII)V

    .line 591
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    .line 594
    aget v7, v3, v5

    .line 596
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    move-result-object v7

    .line 601
    check-cast v6, Ljava/util/HashSet;

    .line 602
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v5, v5, 0x1

    .line 607
    goto :goto_13

    .line 609
    :cond_1b
    :goto_14
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 610
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 612
    move-result-object p1

    .line 615
    :goto_15
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 616
    if-ge v0, v1, :cond_1e

    .line 618
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    .line 620
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 622
    aget v2, v2, v0

    .line 624
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 626
    move-result-object v2

    .line 629
    check-cast v1, Ljava/util/HashSet;

    .line 630
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 632
    move-result v1

    .line 635
    if-eqz v1, :cond_1c

    .line 636
    goto :goto_16

    .line 638
    :cond_1c
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->getNextPosition()I

    .line 639
    move-result v1

    .line 642
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    .line 643
    move-result v4

    .line 646
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    .line 647
    move-result v5

    .line 650
    const/4 v2, -0x1

    .line 651
    if-ne v1, v2, :cond_1d

    .line 652
    goto :goto_17

    .line 654
    :cond_1d
    aget-object v3, p1, v0

    .line 655
    const/4 v6, 0x1

    .line 657
    const/4 v7, 0x1

    .line 658
    move-object v2, p0

    .line 659
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/helper/widget/Grid;->connectView(Landroid/view/View;IIII)V

    .line 660
    :goto_16
    add-int/lit8 v0, v0, 0x1

    .line 663
    goto :goto_15

    .line 665
    :cond_1e
    :goto_17
    return-void
    .line 666
.end method

.method public final getColByIndex(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 7
    div-int/2addr p1, p0

    .line 9
    return p1

    .line 10
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 11
    rem-int/2addr p1, p0

    .line 13
    return p1
    .line 14
.end method

.method public getColumnWeights()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getColumns()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 2
    return p0
    .line 4
.end method

.method public getHorizontalGaps()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 2
    return p0
    .line 4
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 2
    return p0
    .line 4
.end method

.method public final getRowByIndex(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 7
    rem-int/2addr p1, p0

    .line 9
    return p1

    .line 10
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 11
    div-int/2addr p1, p0

    .line 13
    return p1
    .line 14
.end method

.method public getRowWeights()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRows()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 2
    return p0
    .line 4
.end method

.method public getSkips()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSpans()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVerticalGaps()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    .line 2
    return p0
    .line 4
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 6
    if-eqz p1, :cond_c

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->Grid:[I

    .line 14
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_b

    .line 26
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 28
    move-result v4

    .line 31
    const/4 v5, 0x5

    .line 32
    if-ne v4, v5, :cond_0

    .line 33
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 35
    move-result v4

    .line 38
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 39
    goto/16 :goto_1

    .line 41
    :cond_0
    if-ne v4, v0, :cond_1

    .line 43
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 45
    move-result v4

    .line 48
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    const/4 v5, 0x7

    .line 52
    if-ne v4, v5, :cond_2

    .line 53
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 58
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    const/4 v5, 0x6

    .line 62
    if-ne v4, v5, :cond_3

    .line 63
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    const/4 v5, 0x4

    .line 72
    if-ne v4, v5, :cond_4

    .line 73
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 78
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    .line 79
    goto :goto_1

    .line 81
    :cond_4
    if-nez v4, :cond_5

    .line 82
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 87
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    .line 88
    goto :goto_1

    .line 90
    :cond_5
    const/4 v5, 0x3

    .line 91
    if-ne v4, v5, :cond_6

    .line 92
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 94
    move-result v4

    .line 97
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 98
    goto :goto_1

    .line 100
    :cond_6
    const/4 v5, 0x2

    .line 101
    const/4 v6, 0x0

    .line 102
    if-ne v4, v5, :cond_7

    .line 103
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 105
    move-result v4

    .line 108
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 109
    goto :goto_1

    .line 111
    :cond_7
    const/16 v5, 0xa

    .line 112
    if-ne v4, v5, :cond_8

    .line 114
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 116
    move-result v4

    .line 119
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    .line 120
    goto :goto_1

    .line 122
    :cond_8
    const/16 v5, 0x9

    .line 123
    if-ne v4, v5, :cond_9

    .line 125
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 127
    move-result v4

    .line 130
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mValidateInputs:Z

    .line 131
    goto :goto_1

    .line 133
    :cond_9
    const/16 v5, 0x8

    .line 134
    if-ne v4, v5, :cond_a

    .line 136
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 138
    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_0

    .line 143
    :cond_b
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 144
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    .line 147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    :cond_c
    return-void
    .line 153
.end method

.method public final initVariables()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 4
    filled-new-array {v0, v1}, [I

    .line 6
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, [[Z

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 18
    array-length p0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p0, :cond_0

    .line 22
    aget-object v2, v0, v1

    .line 24
    const/4 v3, 0x1

    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public final invalidatePositions(IIII)Z
    .locals 5

    .line 1
    move v0, p1

    .line 2
    :goto_0
    add-int v1, p1, p3

    .line 3
    if-ge v0, v1, :cond_3

    .line 5
    move v1, p2

    .line 7
    :goto_1
    add-int v2, p2, p4

    .line 8
    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 12
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ge v0, v3, :cond_1

    .line 16
    aget-object v3, v2, v4

    .line 18
    array-length v3, v3

    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    aget-object v2, v2, v0

    .line 23
    aget-boolean v3, v2, v1

    .line 25
    if-nez v3, :cond_0

    .line 27
    goto :goto_2

    .line 29
    :cond_0
    aput-boolean v4, v2, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    :goto_2
    return v4

    .line 35
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    const/4 p0, 0x1

    .line 39
    return p0
    .line 40
.end method

.method public final makeNewView()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 25
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-object v0
    .line 33
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    const/high16 v1, -0x10000

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 24
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 28
    move-result v8

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 32
    move-result v9

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 36
    move-result v10

    .line 39
    move-object/from16 v1, p0

    .line 40
    iget-object v11, v1, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 42
    array-length v12, v11

    .line 44
    const/4 v1, 0x0

    .line 45
    move v13, v1

    .line 46
    :goto_0
    if-ge v13, v12, :cond_1

    .line 47
    aget-object v1, v11, v13

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 51
    move-result v2

    .line 54
    sub-int/2addr v2, v8

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 56
    move-result v3

    .line 59
    sub-int v14, v3, v7

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 62
    move-result v3

    .line 65
    sub-int/2addr v3, v8

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 67
    move-result v1

    .line 70
    sub-int v15, v1, v7

    .line 71
    int-to-float v2, v2

    .line 73
    const/4 v4, 0x0

    .line 74
    int-to-float v5, v3

    .line 75
    sub-int v1, v9, v7

    .line 76
    int-to-float v6, v1

    .line 78
    move-object/from16 v1, p1

    .line 79
    move v3, v4

    .line 81
    move v4, v5

    .line 82
    move v5, v6

    .line 83
    move-object v6, v0

    .line 84
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    const/4 v2, 0x0

    .line 88
    int-to-float v3, v14

    .line 89
    sub-int v1, v10, v8

    .line 90
    int-to-float v4, v1

    .line 92
    int-to-float v5, v15

    .line 93
    move-object/from16 v1, p1

    .line 94
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    add-int/lit8 v13, v13, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    return-void
    .line 102
.end method

.method public setColumnWeights(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    .line 13
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
    .line 22
.end method

.method public setColumns(I)V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 7
    if-ne v0, p1, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    .line 17
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
    .line 27
.end method

.method public setHorizontalGaps(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-gez v0, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    .line 15
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 8
    if-ne v1, p1, :cond_1

    .line 10
    return-void

    .line 12
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 13
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
    .line 21
.end method

.method public setRowWeights(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    .line 13
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
    .line 22
.end method

.method public setRows(I)V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 7
    if-ne v0, p1, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    .line 17
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
    .line 27
.end method

.method public setSkips(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    .line 13
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
    .line 22
.end method

.method public setSpans(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    .line 17
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    return-void
    .line 26
.end method

.method public setVerticalGaps(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-gez v0, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    .line 15
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public final updateActualRowsAndColumns()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 11
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 13
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 16
    if-lez v1, :cond_2

    .line 18
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 20
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 22
    add-int/2addr v0, v1

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    div-int/2addr v0, v1

    .line 27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    if-lez v0, :cond_3

    .line 31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 33
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 35
    add-int/2addr v1, v0

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    div-int/2addr v1, v0

    .line 40
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 44
    int-to-double v0, v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 47
    move-result-wide v0

    .line 50
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 51
    add-double/2addr v0, v2

    .line 53
    double-to-int v0, v0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 55
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 57
    add-int/2addr v1, v0

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    div-int/2addr v1, v0

    .line 62
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 63
    :goto_1
    return-void
    .line 65
.end method
