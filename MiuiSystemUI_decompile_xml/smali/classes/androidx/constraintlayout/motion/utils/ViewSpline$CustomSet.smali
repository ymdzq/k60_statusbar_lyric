.class public final Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mConstraintAttributeList:Landroid/util/SparseArray;

.field public mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    .line 2
    const-string v0, ","

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    aget-object p1, p1, v0

    .line 12
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final setPoint(FI)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "call of custom attribute setPoint"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setProperty(FLandroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    float-to-double v1, p1

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 17
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    .line 19
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 21
    return-void
    .line 24
.end method

.method public final setup(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    move-result-object v3

    .line 12
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 13
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 15
    move-result v3

    .line 18
    new-array v4, v1, [D

    .line 19
    new-array v5, v3, [F

    .line 21
    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    .line 23
    filled-new-array {v1, v3}, [I

    .line 25
    move-result-object v3

    .line 28
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 29
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, [[D

    .line 35
    move v5, v2

    .line 37
    :goto_0
    if-ge v5, v1, :cond_1

    .line 38
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    move-result v6

    .line 43
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v7

    .line 47
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 48
    int-to-double v8, v6

    .line 50
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    .line 51
    mul-double/2addr v8, v10

    .line 56
    aput-wide v8, v4, v5

    .line 57
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    .line 59
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 61
    move v6, v2

    .line 64
    :goto_1
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    .line 65
    array-length v8, v7

    .line 67
    if-ge v6, v8, :cond_0

    .line 68
    aget-object v8, v3, v5

    .line 70
    aget v7, v7, v6

    .line 72
    float-to-double v9, v7

    .line 74
    aput-wide v9, v8, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 77
    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p1, v4, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 87
    return-void
    .line 89
.end method
