.class public final Lmiuix/waterbox/WaterBox;
.super Landroid/widget/RelativeLayout;
.source "WaterBox.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/waterbox/WaterBox$WaterData;,
        Lmiuix/waterbox/WaterBox$LineEndPoints;
    }
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field public static final MAX_ANGLE:I = 0x23

.field public static final MAX_VALUE:F = 1.0f

.field public static final MinValue:F = 0.0f

.field public static final POINT_NUM_DEFAULT:I = 0x5

.field private static final SENSOR_ACC_VALUE_DIMENS:I = 0x3

.field private static final SENSOR_BUFFER_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WaterBox"


# instance fields
.field private mAccValuesForAverage:[[F

.field private mAccValuesForAverageIndex:I

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mColor:I

.field private mCornerPath:Landroid/graphics/Path;

.field private mCornerRadius:F

.field private mEdgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mEndPoint:Landroid/graphics/PointF;

.field private mGradientColorEnd:I

.field private mGradientColorStart:I

.field private mHasFell:Z

.field private mIsValueSet:Z

.field private mIsVisible:Z

.field private mPointAnimConfigs:Ljava/util/ArrayList;

.field private mPointNum:I

.field private mPoints:Ljava/util/ArrayList;

.field private mPreAngle:F

.field private mRealEndPoint:Landroid/graphics/PointF;

.field private mRealStartPoint:Landroid/graphics/PointF;

.field private mRectF:Landroid/graphics/RectF;

.field private mRotAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mSensorLastAngle:F

.field private mSensorLastChangedTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mValue:F

.field private mValueAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mWaterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

.field private mWaterPaint:Landroid/graphics/Paint;

.field private mWaterPath:Landroid/graphics/Path;

.field private mWaterPointBL:Landroid/graphics/PointF;

.field private mWaterPointBR:Landroid/graphics/PointF;

.field private mWaterPointTL:Landroid/graphics/PointF;

.field private mWaterPointTR:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, v0}, Lmiuix/waterbox/WaterBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lmiuix/waterbox/WaterBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mGradientColorStart:I

    .line 56
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mGradientColorEnd:I

    const/4 p1, 0x5

    .line 60
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mPointNum:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mValue:F

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverageIndex:I

    const-wide p1, 0x7fffffffffffffffL

    .line 90
    iput-wide p1, p0, Lmiuix/waterbox/WaterBox;->mSensorLastChangedTime:J

    .line 209
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->initInConstruct()V

    return-void
.end method

.method static synthetic access$002(Lmiuix/waterbox/WaterBox;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmiuix/waterbox/WaterBox;->mHasFell:Z

    return p1
.end method

.method private avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 593
    new-instance p0, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    div-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private beginEnterAnim()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lmiuix/waterbox/WaterBox;->mIsValueSet:Z

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Lmiuix/waterbox/WaterBox;->mValue:F

    invoke-virtual {p0, v0}, Lmiuix/waterbox/WaterBox;->setValue(F)V

    :cond_0
    return-void
.end method

.method private constructWaterPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 572
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 573
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 574
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p3, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 578
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 582
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lmiuix/waterbox/WaterBox;->avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x2

    .line 585
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 586
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Lmiuix/waterbox/WaterBox;->avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 589
    :cond_1
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private constructWaterPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1}, Lmiuix/waterbox/WaterBox;->getEdge(Landroid/graphics/PointF;)I

    move-result p1

    .line 499
    invoke-direct {p0, p2}, Lmiuix/waterbox/WaterBox;->getEdge(Landroid/graphics/PointF;)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    filled-new-array {p1, p2, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    filled-new-array {p1, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 508
    :cond_2
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    filled-new-array {p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 505
    :cond_3
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    filled-new-array {p1, p2, v0, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    if-ne p1, v2, :cond_9

    if-eq p2, v4, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    goto/16 :goto_0

    .line 529
    :cond_5
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    filled-new-array {p1, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 526
    :cond_6
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    filled-new-array {p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 523
    :cond_7
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    filled-new-array {p1, p2, v0, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 520
    :cond_8
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    filled-new-array {p1, p2, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    if-ne p1, v1, :cond_e

    if-eq p2, v4, :cond_d

    if-eq p2, v2, :cond_c

    if-eq p2, v1, :cond_b

    if-eq p2, v0, :cond_a

    goto/16 :goto_0

    .line 544
    :cond_a
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    filled-new-array {p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 541
    :cond_b
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    filled-new-array {p1, p2, v0, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 538
    :cond_c
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    filled-new-array {p1, p2, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 535
    :cond_d
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    filled-new-array {p1, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_e
    if-ne p1, v0, :cond_13

    if-eq p2, v4, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    if-eq p2, v0, :cond_f

    goto :goto_0

    .line 559
    :cond_f
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    filled-new-array {p1, p2, v0, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 556
    :cond_10
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object p2, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    filled-new-array {p1, p2, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 553
    :cond_11
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    filled-new-array {p1, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 550
    :cond_12
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    filled-new-array {p0}, [Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_13
    :goto_0
    if-eqz v3, :cond_14

    .line 563
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    .line 566
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v3

    .line 564
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private drawWater(Landroid/graphics/Canvas;)V
    .locals 12

    .line 478
    iget-boolean v0, p0, Lmiuix/waterbox/WaterBox;->mHasFell:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mStartPoint:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    :goto_0
    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mEndPoint:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    .line 480
    :goto_1
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const-string v3, "WaterBox"

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "endP.x error"

    .line 481
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 484
    :cond_3
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "startP.x error"

    .line 485
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 486
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 488
    :cond_5
    invoke-direct {p0, v1, v0}, Lmiuix/waterbox/WaterBox;->constructWaterPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Ljava/util/List;

    move-result-object v2

    .line 489
    invoke-direct {p0, v1, v0, v2}, Lmiuix/waterbox/WaterBox;->constructWaterPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/List;)V

    .line 490
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->isGradientColorSet()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lmiuix/waterbox/WaterBox;->mValue:F

    mul-float v5, v0, v1

    const/4 v6, 0x0

    .line 492
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lmiuix/waterbox/WaterBox;->mGradientColorStart:I

    iget v9, p0, Lmiuix/waterbox/WaterBox;->mGradientColorEnd:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 491
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 494
    :cond_6
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private followRot()V
    .locals 9

    .line 333
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$WaterData;->getValue()F

    move-result v0

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v1}, Lmiuix/waterbox/WaterBox$WaterData;->getRot()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->getLineEnd(FF)Lmiuix/waterbox/WaterBox$LineEndPoints;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 337
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 338
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 339
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 342
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v1}, Lmiuix/waterbox/WaterBox$WaterData;->getRot()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mEdgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v3, "edgeRot"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    const/4 v0, 0x0

    .line 344
    :goto_0
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 346
    invoke-direct {p0, v0}, Lmiuix/waterbox/WaterBox;->getPointPer(I)F

    move-result v2

    .line 347
    iget-object v3, p0, Lmiuix/waterbox/WaterBox;->mPointAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/base/AnimConfig;

    .line 348
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-interface {v4, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v4

    iget-object v7, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v2, v7, v8}, Lmiuix/waterbox/WaterBox;->valFromPer(FFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "x"

    filled-new-array {v8, v7, v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 349
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v4, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2, v4, v5}, Lmiuix/waterbox/WaterBox;->valFromPer(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "y"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$WaterData;->getValue()F

    move-result v0

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v1}, Lmiuix/waterbox/WaterBox$WaterData;->getEdgeRot()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->getLineEnd(FF)Lmiuix/waterbox/WaterBox$LineEndPoints;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 354
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 355
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 356
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private getEdge(Landroid/graphics/PointF;)I
    .locals 3

    .line 784
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->near(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 787
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lmiuix/waterbox/WaterBox;->near(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 791
    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->near(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 793
    :cond_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lmiuix/waterbox/WaterBox;->near(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v1
.end method

.method private getLineEnd(FF)Lmiuix/waterbox/WaterBox$LineEndPoints;
    .locals 2

    const/4 v0, -0x1

    .line 372
    invoke-direct {p0, p1, p2, v0}, Lmiuix/waterbox/WaterBox;->getLinePoint(FFI)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    .line 373
    invoke-direct {p0, p1, p2, v1}, Lmiuix/waterbox/WaterBox;->getLinePoint(FFI)Landroid/graphics/PointF;

    move-result-object p0

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p2, p1

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    add-float/2addr p2, p1

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    move-object v0, p0

    .line 382
    :cond_1
    new-instance p1, Lmiuix/waterbox/WaterBox$LineEndPoints;

    invoke-direct {p1, v0, p0}, Lmiuix/waterbox/WaterBox$LineEndPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object p1
.end method

.method private getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;
    .locals 8

    .line 404
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    invoke-direct {p0, p2}, Lmiuix/waterbox/WaterBox;->toRad(F)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L    # 35.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 405
    iget v1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    invoke-direct {p0, p2}, Lmiuix/waterbox/WaterBox;->toRad(F)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v1, v6

    double-to-float p0, v1

    .line 406
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 407
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, p0, v0

    .line 408
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, p2

    mul-float/2addr p2, v0

    mul-float/2addr p1, p0

    sub-float/2addr p2, p1

    .line 410
    new-instance p0, Landroid/graphics/PointF;

    neg-float p1, p2

    mul-float/2addr p4, v2

    sub-float p2, p1, p4

    div-float/2addr p2, v1

    mul-float/2addr v1, p3

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private getLinePoint(FFI)Landroid/graphics/PointF;
    .locals 9

    .line 386
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v1, p1

    .line 387
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    .line 388
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    float-to-double v3, p1

    invoke-direct {p0, p2}, Lmiuix/waterbox/WaterBox;->toRad(F)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 389
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double v3, p1

    invoke-direct {p0, p2}, Lmiuix/waterbox/WaterBox;->toRad(F)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 391
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 392
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    mul-int/2addr v3, p3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/PointF;->x:F

    mul-int/lit8 p3, p3, 0x5a

    int-to-float p3, p3

    sub-float/2addr p2, p3

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 393
    invoke-direct {p0, v0, p2, v1, p3}, Lmiuix/waterbox/WaterBox;->getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 394
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v1}, Lmiuix/waterbox/WaterBox$WaterData;->getRot()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 395
    iget v1, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 396
    invoke-direct {p0, v0, p2, p3, v1}, Lmiuix/waterbox/WaterBox;->getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 398
    :cond_0
    iget p0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 399
    iget p0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method private getPointPer(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 418
    iget p0, p0, Lmiuix/waterbox/WaterBox;->mPointNum:I

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private getWaterAlphaByValue(F)F
    .locals 0

    .line 0
    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private handleNewSensorAverageValue([F)V
    .locals 7

    const/4 v0, 0x0

    .line 624
    aget v0, p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    const/4 v2, 0x1

    .line 625
    aget v3, p1, v2

    div-float/2addr v3, v1

    const/4 v4, 0x2

    .line 626
    aget p1, p1, v4

    div-float/2addr p1, v1

    .line 628
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 629
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 630
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt v4, v1, :cond_0

    neg-float v1, v3

    float-to-double v3, v1

    neg-float v0, v0

    float-to-double v0, v0

    .line 635
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->toAngle(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_1

    :cond_0
    neg-float v0, v0

    float-to-double v0, v0

    neg-float v3, v3

    float-to-double v3, v3

    .line 637
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    invoke-direct {p0, v5, v6}, Lmiuix/waterbox/WaterBox;->toAngle(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Lmiuix/waterbox/WaterBox;->toAngle(D)D

    move-result-wide v0

    double-to-float v0, v0

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    sub-float v0, v1, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 640
    :goto_1
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->isSensorNotChangedForAWhile()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 641
    invoke-direct {p0, v0}, Lmiuix/waterbox/WaterBox;->isSensorAngleChanged(F)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/waterbox/WaterBox;->mSensorLastChangedTime:J

    .line 647
    iput v0, p0, Lmiuix/waterbox/WaterBox;->mSensorLastAngle:F

    .line 649
    :cond_3
    invoke-direct {p0, v0}, Lmiuix/waterbox/WaterBox;->rotToAngle(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    .line 651
    iget-object p1, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "effectPer"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 652
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method private initAfterSizeConfirm()V
    .locals 11

    .line 290
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mPointAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 294
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 296
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    iget v1, p0, Lmiuix/waterbox/WaterBox;->mValue:F

    invoke-direct {p0, v1}, Lmiuix/waterbox/WaterBox;->getWaterAlphaByValue(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/waterbox/WaterBox$WaterData;->setWaterAlpha(F)V

    .line 297
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v2}, Lmiuix/waterbox/WaterBox$WaterData;->getWaterAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v2}, Lmiuix/waterbox/WaterBox$WaterData;->getValue()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 300
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 301
    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 303
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 304
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    iput v0, v1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    move v3, v1

    .line 306
    :goto_0
    iget v4, p0, Lmiuix/waterbox/WaterBox;->mPointNum:I

    if-ge v3, v4, :cond_0

    .line 307
    invoke-direct {p0, v3}, Lmiuix/waterbox/WaterBox;->getPointPer(I)F

    move-result v4

    .line 308
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 309
    iget-object v6, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [F

    float-to-double v7, v4

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    .line 312
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    const-wide v9, 0x3fe99999a0000000L    # 0.800000011920929

    sub-double/2addr v9, v7

    double-to-float v4, v9

    aput v4, v6, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v4, -0x2

    .line 311
    invoke-static {v4, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    .line 313
    iget-object v5, p0, Lmiuix/waterbox/WaterBox;->mPointAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mStartPoint:Landroid/graphics/PointF;

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 317
    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 319
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mEndPoint:Landroid/graphics/PointF;

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 320
    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 322
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 323
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 324
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 325
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method private initAnimConfig()V
    .locals 4

    .line 257
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mEdgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 258
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 260
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v1, [F

    .line 261
    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 263
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v1, [F

    .line 264
    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 266
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mValueAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v1, [F

    .line 267
    fill-array-data v1, :array_3

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 268
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mValueAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/waterbox/WaterBox$1;

    invoke-direct {v1, p0}, Lmiuix/waterbox/WaterBox$1;-><init>(Lmiuix/waterbox/WaterBox;)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initInConstruct()V
    .locals 4

    .line 213
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    sget v0, Lmiuix/waterbox/R$color;->miuix_appcompat_water_box_bg_color:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 216
    :cond_0
    new-instance v0, Lmiuix/waterbox/WaterBox$WaterData;

    invoke-direct {v0}, Lmiuix/waterbox/WaterBox$WaterData;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    const/4 v0, 0x2

    new-array v0, v0, [[F

    .line 217
    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverage:[[F

    .line 218
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    .line 219
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPath:Landroid/graphics/Path;

    .line 220
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mRectF:Landroid/graphics/RectF;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mPointAnimConfigs:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mPoints:Ljava/util/ArrayList;

    .line 223
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$WaterData;->getRot()F

    move-result v0

    iput v0, p0, Lmiuix/waterbox/WaterBox;->mPreAngle:F

    .line 224
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/waterbox/R$color;->miuix_appcompat_water_box_water_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/waterbox/WaterBox;->mColor:I

    .line 225
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/waterbox/R$dimen;->miuix_waterbox_round_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lmiuix/waterbox/WaterBox;->mCornerRadius:F

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/waterbox/WaterBox;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mRealStartPoint:Landroid/graphics/PointF;

    .line 232
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mRealEndPoint:Landroid/graphics/PointF;

    .line 233
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mStartPoint:Landroid/graphics/PointF;

    .line 234
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mEndPoint:Landroid/graphics/PointF;

    .line 236
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTL:Landroid/graphics/PointF;

    .line 237
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBL:Landroid/graphics/PointF;

    .line 238
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointBR:Landroid/graphics/PointF;

    .line 239
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterPointTR:Landroid/graphics/PointF;

    .line 241
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mRectF:Landroid/graphics/RectF;

    .line 243
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->initAnimConfig()V

    return-void
.end method

.method private isGradientColorSet()Z
    .locals 2

    .line 776
    iget v0, p0, Lmiuix/waterbox/WaterBox;->mGradientColorEnd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lmiuix/waterbox/WaterBox;->mGradientColorStart:I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSensorAngleChanged(F)Z
    .locals 0

    .line 661
    iget p0, p0, Lmiuix/waterbox/WaterBox;->mSensorLastAngle:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x41100000    # 9.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSensorNotChangedForAWhile()Z
    .locals 4

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/waterbox/WaterBox;->mSensorLastChangedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private near(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 780
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private normalizeValue(F)F
    .locals 6

    .line 0
    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    move p1, p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    if-ltz v3, :cond_2

    cmpg-double v1, v1, v4

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    :goto_0
    float-to-double v1, p0

    cmpl-double p1, v1, v4

    if-lez p1, :cond_3

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p1, v1, v3

    if-gez p1, :cond_3

    const p0, 0x3cf5c28f    # 0.03f

    :cond_3
    float-to-double v1, p0

    const-wide v3, 0x3fef0a3d70a3d70aL    # 0.97

    cmpl-double p1, v1, v3

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    if-lez p1, :cond_4

    cmpg-double p1, v1, v3

    if-gez p1, :cond_4

    const p0, 0x3f7851ec    # 0.97f

    :cond_4
    float-to-double v1, p0

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return p0
.end method

.method private onUnvisible()V
    .locals 0

    .line 443
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->unregisterSensorListener()V

    return-void
.end method

.method private onVisible()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 437
    iput-wide v0, p0, Lmiuix/waterbox/WaterBox;->mSensorLastChangedTime:J

    .line 438
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->registerSensorListener()V

    .line 439
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->beginEnterAnim()V

    return-void
.end method

.method private registerSensorListener()V
    .locals 3

    .line 447
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string p0, "WaterBox"

    const-string v0, "registerListener"

    .line 450
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetPath()V
    .locals 4

    .line 824
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 825
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/waterbox/WaterBox;->mCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 826
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private rotToAngle(F)V
    .locals 4

    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float v0, p1, v0

    const/high16 v1, 0x42b40000    # 90.0f

    if-lez v0, :cond_0

    const/high16 v0, 0x43e10000    # 450.0f

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sub-float/2addr p1, v0

    .line 672
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$WaterData;->getValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/waterbox/WaterBox$WaterData;->setEffectPer(F)V

    .line 675
    :cond_1
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    invoke-virtual {v0}, Lmiuix/waterbox/WaterBox$WaterData;->getEffectPer()F

    move-result v0

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    .line 676
    invoke-virtual {v2}, Lmiuix/waterbox/WaterBox$WaterData;->getEffectPer()F

    move-result v2

    const/high16 v3, -0x3df40000    # -35.0f

    mul-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 675
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p1, v1

    .line 677
    :goto_1
    iget v0, p0, Lmiuix/waterbox/WaterBox;->mPreAngle:F

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-lez v0, :cond_2

    sub-float/2addr p1, v2

    goto :goto_1

    .line 680
    :cond_2
    :goto_2
    iget v0, p0, Lmiuix/waterbox/WaterBox;->mPreAngle:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-float/2addr p1, v2

    goto :goto_2

    .line 683
    :cond_3
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v1, "rot"

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private toAngle(D)D
    .locals 2

    .line 0
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private toRad(F)D
    .locals 2

    .line 0
    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private unregisterSensorListener()V
    .locals 1

    .line 455
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string p0, "WaterBox"

    const-string v0, "unregisterListener"

    .line 457
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private valFromPer(FFF)F
    .locals 0

    .line 0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 818
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 819
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 820
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 809
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 810
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 811
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 812
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 248
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiuix/waterbox/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 463
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 464
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->unregisterSensorListener()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 469
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->followRot()V

    .line 470
    invoke-direct {p0, p1}, Lmiuix/waterbox/WaterBox;->drawWater(Landroid/graphics/Canvas;)V

    .line 471
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->isSensorNotChangedForAWhile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 474
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 603
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 604
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverage:[[F

    iget v1, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverageIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 605
    iput v1, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverageIndex:I

    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    const/4 v1, 0x0

    .line 607
    iput v1, p0, Lmiuix/waterbox/WaterBox;->mAccValuesForAverageIndex:I

    const/4 v2, 0x3

    new-array v3, v2, [F

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_0

    .line 612
    aget v6, v3, v4

    aget-object v7, v0, v5

    aget v7, v7, v4

    add-float/2addr v6, v7

    aput v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, v2, :cond_2

    .line 616
    aget p1, v3, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    aput p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 618
    :cond_2
    invoke-direct {p0, v3}, Lmiuix/waterbox/WaterBox;->handleNewSensorAverageValue([F)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 802
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 803
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->initAfterSizeConfirm()V

    .line 804
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->resetPath()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 423
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 425
    iget-boolean p1, p0, Lmiuix/waterbox/WaterBox;->mIsVisible:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lmiuix/waterbox/WaterBox;->mIsVisible:Z

    .line 427
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->onVisible()V

    goto :goto_0

    .line 429
    :cond_0
    iget-boolean p1, p0, Lmiuix/waterbox/WaterBox;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lmiuix/waterbox/WaterBox;->mIsVisible:Z

    .line 431
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->onUnvisible()V

    .line 433
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onVisibilityChanged:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WaterBox"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 748
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mColor:I

    .line 749
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 771
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mCornerRadius:F

    .line 772
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->resetPath()V

    return-void
.end method

.method public setGradientColor(II)V
    .locals 0

    .line 759
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mGradientColorStart:I

    .line 760
    iput p2, p0, Lmiuix/waterbox/WaterBox;->mGradientColorEnd:I

    .line 762
    iget-object p0, p0, Lmiuix/waterbox/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setPointNum(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x5

    .line 739
    :cond_0
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mPointNum:I

    return-void
.end method

.method public final setValue(F)V
    .locals 8

    const/4 v0, 0x1

    .line 716
    iput-boolean v0, p0, Lmiuix/waterbox/WaterBox;->mIsValueSet:Z

    .line 717
    invoke-direct {p0}, Lmiuix/waterbox/WaterBox;->initAnimConfig()V

    .line 718
    invoke-direct {p0, p1}, Lmiuix/waterbox/WaterBox;->normalizeValue(F)F

    move-result p1

    .line 719
    iput p1, p0, Lmiuix/waterbox/WaterBox;->mValue:F

    .line 720
    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mValueAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    double-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    aput v3, v2, v0

    const/4 v0, -0x2

    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 721
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lmiuix/waterbox/WaterBox;->mValueAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v3, "value"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 722
    iget-object v0, p0, Lmiuix/waterbox/WaterBox;->mWaterData:Lmiuix/waterbox/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiuix/waterbox/WaterBox;->getWaterAlphaByValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v1, p0, Lmiuix/waterbox/WaterBox;->mWaterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v2, "waterAlpha"

    filled-new-array {v2, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 723
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
