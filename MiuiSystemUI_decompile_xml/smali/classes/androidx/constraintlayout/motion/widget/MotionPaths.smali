.class public final Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final sNames:[Ljava/lang/String;


# instance fields
.field public mAnimateRelativeTo:I

.field public final mAttributes:Ljava/util/LinkedHashMap;

.field public mDrawPath:I

.field public mHeight:F

.field public mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field public mMode:I

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mPosition:F

.field public mRelativeAngle:F

.field public mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mTempDelta:[D

.field public mTempValue:[D

.field public mTime:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "position"

    .line 2
    const-string/jumbo v1, "x"

    .line 4
    const-string/jumbo v2, "y"

    .line 7
    const-string/jumbo v3, "width"

    .line 10
    const-string v4, "height"

    .line 13
    const-string v5, "pathRotate"

    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 5
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 13
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 14
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v6, -0x1

    .line 15
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 16
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 17
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v5, 0x0

    .line 18
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 19
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 20
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v4, 0x12

    new-array v5, v4, [D

    .line 21
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v4, v4, [D

    .line 22
    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 23
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    const/4 v5, 0x2

    const/high16 v7, 0x42c80000    # 100.0f

    if-eq v4, v6, :cond_7

    .line 24
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 25
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 26
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 27
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 28
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 29
    :goto_0
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 30
    :goto_1
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v8, v9

    .line 31
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v10, v11

    .line 32
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    mul-float/2addr v8, v6

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    .line 33
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float/2addr v10, v7

    add-float/2addr v10, v11

    float-to-int v8, v10

    int-to-float v8, v8

    .line 34
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 35
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    if-eq v8, v5, :cond_4

    .line 36
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    .line 37
    :cond_2
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v6, v7, v5, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 38
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 39
    :cond_3
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v3, v5, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_6

    .line 40
    :cond_4
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v5, v6, v4, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    goto :goto_4

    .line 41
    :cond_5
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    :goto_4
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 42
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 43
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v3, v5, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    goto :goto_5

    :cond_6
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_5
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 44
    :goto_6
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 45
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 46
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    .line 47
    :cond_7
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_1c

    if-eq v4, v5, :cond_17

    const/4 v5, 0x3

    if-eq v4, v5, :cond_e

    .line 48
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 49
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 50
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 51
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_7

    :cond_8
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 52
    :goto_7
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_8

    :cond_9
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 53
    :goto_8
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v10, v7, v9

    .line 54
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v13, v11, v12

    .line 55
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 56
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v15, v9, v8

    add-float/2addr v15, v14

    .line 57
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v16, v12, v8

    add-float v16, v16, v1

    .line 58
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 59
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v11, v8

    add-float/2addr v11, v2

    sub-float/2addr v7, v15

    sub-float v11, v11, v16

    mul-float v2, v7, v4

    add-float/2addr v2, v14

    mul-float/2addr v10, v5

    div-float v3, v10, v8

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 60
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v2, v11, v4

    add-float/2addr v2, v1

    mul-float/2addr v13, v6

    div-float v1, v13, v8

    sub-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    .line 61
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v9, v10

    float-to-int v2, v9

    int-to-float v2, v2

    .line 62
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v2, v2

    .line 63
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v2, p3

    .line 64
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_9

    :cond_a
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 65
    :goto_9
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 66
    :goto_a
    iget v8, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_b

    :cond_c
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 67
    :goto_b
    iget v8, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_c

    :cond_d
    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    const/4 v8, 0x0

    .line 68
    :goto_c
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v10, p4

    .line 69
    iget v8, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    mul-float/2addr v9, v11

    add-float/2addr v9, v5

    sub-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 70
    iget v3, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v7, v6

    add-float/2addr v7, v3

    mul-float/2addr v11, v4

    add-float/2addr v11, v7

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 71
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 72
    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_e
    move-object v10, v2

    move-object v2, v1

    .line 73
    iget v1, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    .line 74
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 75
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 76
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v1

    goto :goto_d

    :cond_f
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 77
    :goto_d
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v1

    goto :goto_e

    :cond_10
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 78
    :goto_e
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v7, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v9, v6, v7

    .line 79
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v12, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v13, v11, v12

    .line 80
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 81
    iget v14, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v15, v7, v8

    add-float/2addr v15, v14

    .line 82
    iget v2, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v16, v12, v8

    add-float v16, v16, v2

    .line 83
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v6, v8

    add-float/2addr v6, v10

    .line 84
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v11, v8

    add-float/2addr v11, v3

    cmpl-float v3, v15, v6

    if-lez v3, :cond_11

    goto :goto_f

    :cond_11
    move/from16 v17, v15

    move v15, v6

    move/from16 v6, v17

    :goto_f
    cmpl-float v3, v16, v11

    if-lez v3, :cond_12

    goto :goto_10

    :cond_12
    move/from16 v17, v16

    move/from16 v16, v11

    move/from16 v11, v17

    :goto_10
    sub-float/2addr v15, v6

    sub-float v16, v16, v11

    mul-float v3, v15, v1

    add-float/2addr v3, v14

    mul-float/2addr v9, v4

    div-float v4, v9, v8

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 85
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v3, v16, v1

    add-float/2addr v3, v2

    mul-float/2addr v13, v5

    div-float v2, v13, v8

    sub-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    .line 86
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v7, v9

    float-to-int v3, v7

    int-to-float v3, v3

    .line 87
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v3, v3

    .line 88
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v5, p3

    .line 89
    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v1

    goto :goto_11

    :cond_13
    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 90
    :goto_11
    iget v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x0

    goto :goto_12

    :cond_14
    iget v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 91
    :goto_12
    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_13

    :cond_15
    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 92
    :goto_13
    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_14

    :cond_16
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    const/4 v7, 0x0

    .line 93
    :goto_14
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v9, p4

    .line 94
    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v3, v15

    add-float/2addr v3, v7

    mul-float v8, v8, v16

    add-float/2addr v8, v3

    sub-float/2addr v8, v4

    float-to-int v3, v8

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 95
    iget v3, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v15, v6

    add-float/2addr v15, v3

    mul-float v16, v16, v1

    add-float v16, v16, v15

    sub-float v1, v16, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 96
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 97
    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_17
    move-object v5, v1

    move-object v9, v2

    .line 98
    iget v1, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    .line 99
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 100
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 101
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_15

    :cond_18
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 102
    :goto_15
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_16

    :cond_19
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 103
    :goto_16
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v10, v6, v7

    .line 104
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v13, v11, v12

    .line 105
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 106
    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v15, v7, v8

    add-float/2addr v15, v14

    .line 107
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v16, v12, v8

    add-float v16, v16, v9

    .line 108
    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v6, v8

    add-float/2addr v6, v5

    .line 109
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v11, v8

    add-float/2addr v11, v3

    sub-float/2addr v6, v15

    sub-float v11, v11, v16

    mul-float/2addr v6, v1

    add-float/2addr v6, v14

    mul-float/2addr v10, v2

    div-float v2, v10, v8

    sub-float/2addr v6, v2

    float-to-int v2, v6

    int-to-float v2, v2

    .line 110
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    mul-float/2addr v13, v4

    div-float v1, v13, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    .line 111
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v7, v10

    float-to-int v1, v7

    int-to-float v1, v1

    .line 112
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    .line 113
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    const/4 v1, 0x2

    .line 114
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v1, p3

    .line 115
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 116
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    float-to-int v2, v2

    sub-int v2, p1, v2

    .line 117
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 118
    :cond_1a
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 119
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    float-to-int v2, v2

    sub-int v2, p2, v2

    .line 120
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 121
    :cond_1b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 122
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 123
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_1c
    move-object v9, v2

    .line 124
    iget v2, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    .line 125
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 126
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 127
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v2

    goto :goto_17

    :cond_1d
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 128
    :goto_17
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v2

    goto :goto_18

    :cond_1e
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 129
    :goto_18
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v6, v7

    .line 130
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v7, v10

    .line 131
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 132
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_19

    :cond_1f
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 133
    :goto_19
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float v12, v11, v8

    add-float/2addr v12, v10

    .line 134
    iget v13, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v15, v14, v8

    add-float/2addr v15, v13

    .line 135
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v1, v8

    add-float/2addr v1, v9

    .line 136
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v3, v8

    add-float/2addr v3, v9

    sub-float/2addr v1, v12

    sub-float/2addr v3, v15

    mul-float v9, v1, v2

    add-float/2addr v10, v9

    mul-float/2addr v6, v4

    div-float v4, v6, v8

    sub-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v10, v10

    .line 137
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v2, v3

    add-float/2addr v13, v2

    mul-float/2addr v7, v5

    div-float v5, v7, v8

    sub-float/2addr v13, v5

    float-to-int v8, v13

    int-to-float v8, v8

    .line 138
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v11, v6

    float-to-int v6, v11

    int-to-float v6, v6

    .line 139
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v14, v7

    float-to-int v6, v14

    int-to-float v6, v6

    .line 140
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v6, p3

    .line 141
    iget v7, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v7, 0x0

    goto :goto_1a

    :cond_20
    iget v7, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_1a
    neg-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v1, v7

    const/4 v7, 0x1

    .line 142
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v7, p4

    .line 143
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v4

    float-to-int v4, v8

    int-to-float v4, v4

    .line 144
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v7, v2

    sub-float/2addr v7, v5

    float-to-int v2, v7

    int-to-float v2, v2

    add-float/2addr v4, v3

    .line 145
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v2, v1

    .line 146
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 147
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 148
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 149
    iget v1, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method public static diff(FF)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    sub-float/2addr p0, p1

    .line 17
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p0

    .line 21
    const p1, 0x358637bd    # 1.0E-6f

    .line 22
    cmpl-float p0, p0, p1

    .line 25
    if-lez p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result p0

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    move-result p1

    .line 39
    if-eq p0, p1, :cond_3

    .line 40
    goto :goto_2

    .line 42
    :cond_3
    move v1, v2

    .line 43
    :goto_2
    return v1
.end method

.method public static setDpDt(FF[F[I[D[D)V
    .locals 12

    .line 1
    move-object v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v4, v1

    .line 5
    move v5, v4

    .line 6
    move v6, v5

    .line 7
    move v7, v6

    .line 8
    move v3, v2

    .line 9
    :goto_0
    array-length v8, v0

    .line 10
    const/4 v9, 0x1

    .line 11
    if-ge v3, v8, :cond_4

    .line 12
    aget-wide v10, p4, v3

    .line 14
    double-to-float v8, v10

    .line 16
    aget-wide v10, p5, v3

    .line 17
    aget v10, v0, v3

    .line 19
    if-eq v10, v9, :cond_3

    .line 21
    const/4 v9, 0x2

    .line 23
    if-eq v10, v9, :cond_2

    .line 24
    const/4 v9, 0x3

    .line 26
    if-eq v10, v9, :cond_1

    .line 27
    const/4 v9, 0x4

    .line 29
    if-eq v10, v9, :cond_0

    .line 30
    goto :goto_1

    .line 32
    :cond_0
    move v6, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v8

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v7, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move v5, v8

    .line 39
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    .line 43
    invoke-static {v1, v4, v0, v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 45
    move-result v3

    .line 48
    invoke-static {v1, v6, v0, v7}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 49
    move-result v0

    .line 52
    const/high16 v5, 0x3f800000    # 1.0f

    .line 53
    mul-float/2addr v4, v5

    .line 55
    mul-float/2addr v6, v5

    .line 56
    add-float/2addr v4, v3

    .line 57
    add-float/2addr v6, v0

    .line 58
    sub-float v7, v5, p0

    .line 59
    mul-float/2addr v7, v3

    .line 61
    mul-float/2addr v4, p0

    .line 62
    add-float/2addr v4, v7

    .line 63
    add-float/2addr v4, v1

    .line 64
    aput v4, p2, v2

    .line 65
    sub-float/2addr v5, p1

    .line 67
    mul-float/2addr v5, v0

    .line 68
    mul-float/2addr v6, p1

    .line 69
    add-float/2addr v6, v5

    .line 70
    add-float/2addr v6, v1

    .line 71
    aput v6, p2, v9

    .line 72
    return-void
    .line 74
.end method


# virtual methods
.method public final applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 2
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 12
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 16
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 20
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 24
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 28
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 30
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 32
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 34
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 38
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 42
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 68
    if-eqz v2, :cond_0

    .line 70
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 74
    move-result v3

    .line 77
    const/4 v4, 0x4

    .line 78
    if-eq v3, v4, :cond_1

    .line 79
    const/4 v4, 0x5

    .line 81
    if-eq v3, v4, :cond_1

    .line 82
    const/4 v4, 0x7

    .line 84
    if-eq v3, v4, :cond_1

    .line 85
    const/4 v3, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v3, 0x0

    .line 89
    :goto_1
    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 92
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    return-void
    .line 98
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 4
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getCenter(D[I[D[FI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 5
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 7
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 9
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 11
    const/4 v6, 0x0

    .line 13
    move v7, v6

    .line 14
    :goto_0
    array-length v8, v1

    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x1

    .line 17
    if-ge v7, v8, :cond_4

    .line 18
    aget-wide v11, p4, v7

    .line 20
    double-to-float v8, v11

    .line 22
    aget v11, v1, v7

    .line 23
    if-eq v11, v10, :cond_3

    .line 25
    if-eq v11, v9, :cond_2

    .line 27
    const/4 v9, 0x3

    .line 29
    if-eq v11, v9, :cond_1

    .line 30
    const/4 v9, 0x4

    .line 32
    if-eq v11, v9, :cond_0

    .line 33
    goto :goto_1

    .line 35
    :cond_0
    move v5, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v3, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v2, v8

    .line 42
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    .line 48
    if-eqz v0, :cond_5

    .line 50
    new-array v7, v9, [F

    .line 52
    new-array v8, v9, [F

    .line 54
    move-wide/from16 v11, p1

    .line 56
    invoke-virtual {v0, v11, v12, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 58
    aget v0, v7, v6

    .line 61
    aget v6, v7, v10

    .line 63
    float-to-double v11, v0

    .line 65
    float-to-double v13, v2

    .line 66
    float-to-double v2, v3

    .line 67
    move-wide v7, v2

    .line 68
    move-wide v9, v13

    .line 69
    invoke-static/range {v7 .. v12}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 70
    move-result-wide v7

    .line 73
    div-float v0, v4, v1

    .line 74
    float-to-double v9, v0

    .line 76
    sub-double/2addr v7, v9

    .line 77
    double-to-float v0, v7

    .line 78
    float-to-double v6, v6

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 80
    move-result-wide v2

    .line 83
    mul-double/2addr v2, v13

    .line 84
    sub-double/2addr v6, v2

    .line 85
    div-float v2, v5, v1

    .line 86
    float-to-double v2, v2

    .line 88
    sub-double/2addr v6, v2

    .line 89
    double-to-float v3, v6

    .line 90
    move v2, v0

    .line 91
    :cond_5
    div-float/2addr v4, v1

    .line 92
    add-float/2addr v4, v2

    .line 93
    const/4 v0, 0x0

    .line 94
    add-float/2addr v4, v0

    .line 95
    aput v4, p5, p6

    .line 96
    add-int/lit8 v2, p6, 0x1

    .line 98
    div-float/2addr v5, v1

    .line 100
    add-float/2addr v5, v3

    .line 101
    add-float/2addr v5, v0

    .line 102
    aput v5, p5, v2

    .line 103
    return-void
    .line 105
.end method

.method public final setBounds(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 2
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 4
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 6
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 8
    return-void
    .line 10
.end method

.method public final setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    div-float/2addr v1, v2

    .line 8
    add-float/2addr v1, v0

    .line 9
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 10
    sub-float/2addr v1, v0

    .line 12
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 13
    div-float/2addr v0, v2

    .line 15
    sub-float/2addr v1, v0

    .line 16
    float-to-double v0, v1

    .line 17
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 20
    div-float/2addr v4, v2

    .line 22
    add-float/2addr v4, v3

    .line 23
    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 24
    sub-float/2addr v4, v3

    .line 26
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 27
    div-float/2addr p2, v2

    .line 29
    sub-float/2addr v4, p2

    .line 30
    float-to-double v2, v4

    .line 31
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 32
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    move-result-wide p1

    .line 37
    double-to-float p1, p1

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 39
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 43
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 49
    move-result-wide p1

    .line 52
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 53
    add-double/2addr p1, v0

    .line 58
    double-to-float p1, p1

    .line 59
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 63
    float-to-double p1, p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .line 66
    move-result-wide p1

    .line 69
    double-to-float p1, p1

    .line 70
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 71
    :goto_0
    return-void
    .line 73
.end method
