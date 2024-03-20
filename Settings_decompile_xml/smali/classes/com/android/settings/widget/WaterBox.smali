.class public final Lcom/android/settings/widget/WaterBox;
.super Landroid/widget/RelativeLayout;
.source "WaterBox.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/WaterBox$WaterData;,
        Lcom/android/settings/widget/WaterBox$LineEndPoints;
    }
.end annotation


# instance fields
.field private final data:Lcom/android/settings/widget/WaterBox$WaterData;

.field private edgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private endPoint:Landroid/graphics/PointF;

.field private initialized:Z

.field private mAccValues:[F

.field private mAccValuesForAverage:[[F

.field private mAccValuesForAverageIndex:I

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mColor:I

.field private final mCornerPath:Landroid/graphics/Path;

.field private mCornerRadius:F

.field private mDebug:Z

.field private final mDebugPaint:Landroid/graphics/Paint;

.field private mIsValueSet:Z

.field private mIsVisible:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mSensorLastAngle:F

.field private mSensorLastChangedTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValue:F

.field private final mWaterPaint:Landroid/graphics/Paint;

.field private final pointAnimConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private preAngle:F

.field private realEndPoint:Landroid/graphics/PointF;

.field private realStartPoint:Landroid/graphics/PointF;

.field private rotAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private startPoint:Landroid/graphics/PointF;

.field private valueAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private varInitialized:Z

.field private waterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-direct {p1}, Lcom/android/settings/widget/WaterBox$WaterData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    const/4 v0, 0x2

    new-array v0, v0, [[F

    .line 49
    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverage:[[F

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    const-string v0, "#330084FF"

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/WaterBox;->mColor:I

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    const/high16 v0, 0x42400000    # 48.0f

    .line 55
    iput v0, p0, Lcom/android/settings/widget/WaterBox;->mCornerRadius:F

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "water_box"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->mDebug:Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mRectF:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->pointAnimConfigs:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/WaterBox;->preAngle:F

    const-wide v0, 0x7fffffffffffffffL

    .line 74
    iput-wide v0, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-direct {p1}, Lcom/android/settings/widget/WaterBox$WaterData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    const/4 p2, 0x2

    new-array p2, p2, [[F

    .line 49
    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverage:[[F

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    const-string p2, "#330084FF"

    .line 53
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mColor:I

    .line 54
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    const/high16 p2, 0x42400000    # 48.0f

    .line 55
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mCornerRadius:F

    .line 56
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "water_box"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/WaterBox;->mDebug:Z

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mRectF:Landroid/graphics/RectF;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->pointAnimConfigs:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/WaterBox;->preAngle:F

    const-wide p1, 0x7fffffffffffffffL

    .line 74
    iput-wide p1, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-direct {p1}, Lcom/android/settings/widget/WaterBox$WaterData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    const/4 p2, 0x2

    new-array p2, p2, [[F

    .line 49
    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverage:[[F

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    const-string p2, "#330084FF"

    .line 53
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mColor:I

    .line 54
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    const/high16 p2, 0x42400000    # 48.0f

    .line 55
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mCornerRadius:F

    .line 56
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    const-string/jumbo v0, "water_box"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/WaterBox;->mDebug:Z

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mRectF:Landroid/graphics/RectF;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    iput p2, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->pointAnimConfigs:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/WaterBox;->preAngle:F

    const-wide p1, 0x7fffffffffffffffL

    .line 74
    iput-wide p1, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

    return-void
.end method

.method private final avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 624
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

.method private final beginEnterAnim()V
    .locals 3

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->mIsValueSet:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    iget v1, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/WaterBox$WaterData;->setValue(F)V

    .line 227
    iget v0, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WaterBox;->setValue(F)V

    :cond_0
    return-void
.end method

.method private checkInitVars()V
    .locals 4

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->varInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->varInitialized:Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 204
    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    .line 205
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 206
    iput-object v1, p0, Lcom/android/settings/widget/WaterBox;->edgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v0, [F

    .line 207
    fill-array-data v1, :array_1

    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    .line 208
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 209
    iput-object v1, p0, Lcom/android/settings/widget/WaterBox;->rotAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v0, [F

    .line 210
    fill-array-data v1, :array_2

    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    .line 211
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 212
    iput-object v1, p0, Lcom/android/settings/widget/WaterBox;->waterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v0, v0, [F

    .line 213
    fill-array-data v0, :array_3

    invoke-static {v2, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    .line 214
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->valueAnimConfig:Lmiuix/animation/base/AnimConfig;

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

.method private final drawDebug(Landroid/graphics/Canvas;)V
    .locals 8

    .line 628
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v0

    float-to-double v0, v0

    .line 629
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    .line 630
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 631
    iget-object v2, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 632
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 633
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 634
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-double v4, v4

    .line 635
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v0

    double-to-float v0, v4

    .line 636
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 638
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 640
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 647
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 651
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 656
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 660
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    .line 666
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 670
    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 671
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 675
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 679
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 684
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 688
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 689
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 692
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 696
    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawWater(Landroid/graphics/Canvas;)V
    .locals 13

    .line 528
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 529
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 530
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 531
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 532
    iget-object v5, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 535
    iget-object v6, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 538
    invoke-direct {p0, v5}, Lcom/android/settings/widget/WaterBox;->getEdge(Landroid/graphics/PointF;)I

    move-result v7

    .line 539
    invoke-direct {p0, v6}, Lcom/android/settings/widget/WaterBox;->getEdge(Landroid/graphics/PointF;)I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    if-ne v8, v10, :cond_0

    .line 542
    filled-new-array {v0, v2, v3, v4}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    if-ne v7, v10, :cond_1

    if-ne v8, v9, :cond_1

    .line 544
    filled-new-array {v0}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x3

    if-ne v7, v10, :cond_2

    if-ne v8, v11, :cond_2

    .line 546
    filled-new-array {v0, v2}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x4

    if-ne v7, v10, :cond_3

    if-ne v8, v12, :cond_3

    .line 548
    filled-new-array {v0, v2, v3}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    if-ne v7, v9, :cond_4

    if-ne v8, v9, :cond_4

    .line 550
    filled-new-array {v2, v3, v4, v0}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    if-ne v7, v9, :cond_5

    if-ne v8, v11, :cond_5

    .line 552
    filled-new-array {v2}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-ne v7, v9, :cond_6

    if-ne v8, v12, :cond_6

    .line 554
    filled-new-array {v2, v3}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne v7, v9, :cond_7

    if-ne v8, v10, :cond_7

    .line 556
    filled-new-array {v2, v3, v4}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne v7, v11, :cond_8

    if-ne v8, v11, :cond_8

    .line 558
    filled-new-array {v2, v3}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ne v7, v11, :cond_9

    if-ne v8, v12, :cond_9

    .line 560
    filled-new-array {v3}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-ne v7, v11, :cond_a

    if-ne v8, v10, :cond_a

    .line 562
    filled-new-array {v3, v4}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_a
    if-ne v7, v11, :cond_b

    if-ne v8, v9, :cond_b

    .line 564
    filled-new-array {v3, v4, v0}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_b
    if-ne v7, v12, :cond_c

    if-ne v8, v12, :cond_c

    .line 566
    filled-new-array {v4, v0, v2, v3}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_c
    if-ne v7, v12, :cond_d

    if-ne v8, v10, :cond_d

    .line 568
    filled-new-array {v4}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_d
    if-ne v7, v12, :cond_e

    if-ne v8, v9, :cond_e

    .line 570
    filled-new-array {v4, v0}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_e
    if-ne v7, v12, :cond_15

    if-ne v8, v11, :cond_15

    .line 572
    filled-new-array {v4, v0, v2}, [Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 580
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 581
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 582
    iget v3, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const-string v4, "WaterBox"

    if-nez v3, :cond_f

    iget v3, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const-string v3, "endP.x error"

    .line 583
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v6, Landroid/graphics/PointF;->x:F

    .line 586
    :cond_10
    iget v3, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_11

    iget v3, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    const-string/jumbo v3, "startP.x error"

    .line 587
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 590
    :cond_12
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v3, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 592
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 594
    :cond_13
    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 599
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/widget/WaterBox;->avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 600
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v9, v1, :cond_14

    add-int/lit8 v3, v9, -0x1

    .line 605
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/widget/WaterBox;->avgPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 609
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v3, v7, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 617
    :cond_14
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->updateWaterPaintColorAndAlpha()V

    .line 619
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 578
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private final followRot()V
    .locals 13

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v1}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/WaterBox;->getLineEnd(FF)Lcom/android/settings/widget/WaterBox$LineEndPoints;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    .line 306
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 307
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    .line 310
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 311
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 315
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 316
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 319
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 323
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 327
    iget-object v3, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v3}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 328
    iget-object v4, p0, Lcom/android/settings/widget/WaterBox;->edgeRotAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v5, "edgeRot"

    .line 331
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 332
    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 333
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    add-int/lit8 v6, v4, 0x1

    .line 340
    invoke-direct {p0, v4}, Lcom/android/settings/widget/WaterBox;->getPointPer(I)F

    move-result v7

    .line 341
    iget-object v8, p0, Lcom/android/settings/widget/WaterBox;->pointAnimConfigs:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/base/AnimConfig;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v3

    .line 345
    invoke-static {v9}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v9

    invoke-interface {v9, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "x"

    aput-object v11, v10, v3

    .line 349
    iget-object v11, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    .line 352
    iget v11, v11, Landroid/graphics/PointF;->x:F

    .line 353
    iget-object v12, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 356
    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v7, v11, v12}, Lcom/android/settings/widget/WaterBox;->valFromPer(FFF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x2

    aput-object v4, v10, v8

    .line 358
    invoke-interface {v9, v10}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 359
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v5

    .line 362
    iget-object v8, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    .line 365
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 366
    iget-object v9, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 369
    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/widget/WaterBox;->valFromPer(FFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string/jumbo v8, "y"

    .line 370
    filled-new-array {v8, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 371
    invoke-interface {v5, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move v4, v6

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v1}, Lcom/android/settings/widget/WaterBox$WaterData;->getEdgeRot()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/WaterBox;->getLineEnd(FF)Lcom/android/settings/widget/WaterBox$LineEndPoints;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 384
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 385
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 388
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 389
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 393
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 394
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 397
    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private final getEdge(Landroid/graphics/PointF;)I
    .locals 3

    .line 866
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/WaterBox;->near(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 869
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/widget/WaterBox;->near(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 873
    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/WaterBox;->near(FF)Z

    move-result v0

    if-nez v0, :cond_3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/WaterBox;->near(FF)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final getLineEnd(FF)Lcom/android/settings/widget/WaterBox$LineEndPoints;
    .locals 2

    const/4 v0, -0x1

    .line 406
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/WaterBox;->getLinePoint(FFI)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    .line 407
    invoke-direct {p0, p1, p2, v1}, Lcom/android/settings/widget/WaterBox;->getLinePoint(FFI)Landroid/graphics/PointF;

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

    .line 416
    :cond_1
    new-instance p1, Lcom/android/settings/widget/WaterBox$LineEndPoints;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/widget/WaterBox$LineEndPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object p1
.end method

.method private final getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;
    .locals 6

    .line 437
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p2}, Lcom/android/settings/widget/WaterBox;->toRad(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x420c0000    # 35.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p2}, Lcom/android/settings/widget/WaterBox;->toRad(F)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p0, v4

    mul-float/2addr p0, v3

    add-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 438
    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget p2, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, p0, p2

    .line 439
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v0

    mul-float/2addr v0, p2

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    .line 441
    new-instance p0, Landroid/graphics/PointF;

    neg-float p1, v0

    mul-float/2addr p4, v2

    sub-float p2, p1, p4

    div-float/2addr p2, v1

    mul-float/2addr v1, p3

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private final getLinePoint(FFI)Landroid/graphics/PointF;
    .locals 5

    .line 420
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v1, p1

    .line 421
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    .line 422
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    invoke-direct {p0, p2}, Lcom/android/settings/widget/WaterBox;->toRad(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 423
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-direct {p0, p2}, Lcom/android/settings/widget/WaterBox;->toRad(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 424
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 425
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

    .line 426
    invoke-direct {p0, v0, p2, v1, p3}, Lcom/android/settings/widget/WaterBox;->getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 427
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v1}, Lcom/android/settings/widget/WaterBox$WaterData;->getRot()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 428
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 429
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 430
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/settings/widget/WaterBox;->getLineEndFunc(Landroid/graphics/PointF;FFF)Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iput p0, p1, Landroid/graphics/PointF;->x:F

    :cond_0
    return-object p1
.end method

.method private final getPointPer(I)F
    .locals 0

    .line 0
    int-to-float p0, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private final getWaterAlphaByValue(F)F
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
    .locals 5

    .line 725
    iput-object p1, p0, Lcom/android/settings/widget/WaterBox;->mAccValues:[F

    const/4 v0, 0x0

    .line 726
    aget v0, p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    const/4 v2, 0x1

    .line 728
    aget v3, p1, v2

    div-float/2addr v3, v1

    const/4 v4, 0x2

    .line 730
    aget p1, p1, v4

    div-float/2addr p1, v1

    neg-float v1, v3

    float-to-double v3, v1

    neg-float v0, v0

    float-to-double v0, v0

    .line 731
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/WaterBox;->toAngle(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->isSensorNotChangedForAWhile()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 737
    invoke-direct {p0, v0}, Lcom/android/settings/widget/WaterBox;->isSensorAngleChanged(F)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 739
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waterbox refresh anim: isActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sensorAngleChanged="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WaterBox"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

    .line 744
    iput v0, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastAngle:F

    .line 746
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/widget/WaterBox;->rotToAngle(F)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "effectPer"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 748
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method private final init()V
    .locals 11

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->initialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->initialized:Z

    .line 234
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    iget v2, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    invoke-direct {p0, v2}, Lcom/android/settings/widget/WaterBox;->getWaterAlphaByValue(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/WaterBox$WaterData;->setWaterAlpha(F)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->updateWaterPaintColorAndAlpha()V

    .line 241
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/WaterBox;->realStartPoint:Landroid/graphics/PointF;

    const/4 v2, 0x0

    .line 247
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 251
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v5}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 252
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 257
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 258
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->realEndPoint:Landroid/graphics/PointF;

    .line 261
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v5}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 263
    invoke-direct {p0, v3}, Lcom/android/settings/widget/WaterBox;->getPointPer(I)F

    move-result v4

    .line 264
    iget-object v5, p0, Lcom/android/settings/widget/WaterBox;->points:Ljava/util/List;

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v10}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    float-to-double v4, v4

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 266
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [F

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    sub-float/2addr v5, v4

    aput v5, v7, v1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v7, v0

    const/4 v4, -0x2

    invoke-static {v4, v7}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v6, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    .line 267
    iget-object v5, p0, Lcom/android/settings/widget/WaterBox;->pointAnimConfigs:Ljava/util/List;

    .line 268
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->startPoint:Landroid/graphics/PointF;

    .line 275
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 279
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v3}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 280
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 285
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 286
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->endPoint:Landroid/graphics/PointF;

    .line 289
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {p0}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result p0

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method

.method private isSensorAngleChanged(F)Z
    .locals 0

    .line 757
    iget p0, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastAngle:F

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

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

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

.method private final near(FF)Z
    .locals 2

    sub-float/2addr p1, p2

    .line 862
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final normalizeValue(F)F
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

.method private final onInvisible()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->unregisterSensorListener()V

    return-void
.end method

.method private final onVisible()V
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->registerSensorListener()V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/WaterBox;->mSensorLastChangedTime:J

    .line 478
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->beginEnterAnim()V

    return-void
.end method

.method private final registerSensorListener()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    .line 490
    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string p0, "WaterBox"

    const-string/jumbo v0, "registerListener"

    .line 491
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final resetPath()V
    .locals 4

    .line 908
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 909
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    .line 910
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mRectF:Landroid/graphics/RectF;

    .line 911
    iget v2, p0, Lcom/android/settings/widget/WaterBox;->mCornerRadius:F

    .line 912
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 913
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private final rotToAngle(F)V
    .locals 3

    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/16 v0, 0x1c2

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 764
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$WaterData;->getValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/WaterBox$WaterData;->setEffectPer(F)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v0}, Lcom/android/settings/widget/WaterBox$WaterData;->getEffectPer()F

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {v1}, Lcom/android/settings/widget/WaterBox$WaterData;->getEffectPer()F

    move-result v1

    const/high16 v2, -0x3df40000    # -35.0f

    mul-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr p1, v0

    .line 770
    :goto_1
    iget v0, p0, Lcom/android/settings/widget/WaterBox;->preAngle:F

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v0, :cond_3

    .line 775
    :goto_2
    iget v0, p0, Lcom/android/settings/widget/WaterBox;->preAngle:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    add-float/2addr p1, v2

    goto :goto_2

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 781
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 782
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->rotAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string/jumbo v1, "rot"

    .line 785
    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 786
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_3
    sub-float/2addr p1, v2

    goto :goto_1
.end method

.method private final toAngle(F)F
    .locals 2

    const/high16 p0, 0x43340000    # 180.0f

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 791
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private final toRad(F)F
    .locals 2

    float-to-double p0, p1

    .line 446
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private final unregisterSensorListener()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    .line 500
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string p0, "WaterBox"

    const-string/jumbo v0, "unregisterListener"

    .line 501
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final updateWaterPaintColorAndAlpha()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/WaterBox;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mWaterPaint:Landroid/graphics/Paint;

    .line 296
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    invoke-virtual {p0}, Lcom/android/settings/widget/WaterBox$WaterData;->getWaterAlpha()F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private final valFromPer(FFF)F
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
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 903
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 904
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 893
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 894
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 895
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 896
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 190
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/WaterBox;->mAccelerometer:Landroid/hardware/Sensor;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->checkInitVars()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 507
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 508
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->unregisterSensorListener()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->followRot()V

    .line 514
    invoke-direct {p0, p1}, Lcom/android/settings/widget/WaterBox;->drawWater(Landroid/graphics/Canvas;)V

    .line 515
    iget-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->mDebug:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0, p1}, Lcom/android/settings/widget/WaterBox;->drawDebug(Landroid/graphics/Canvas;)V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->isSensorNotChangedForAWhile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 521
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 220
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 704
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 705
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverage:[[F

    iget v1, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 706
    iput v1, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    const/4 v1, 0x0

    .line 708
    iput v1, p0, Lcom/android/settings/widget/WaterBox;->mAccValuesForAverageIndex:I

    const/4 v2, 0x3

    new-array v3, v2, [F

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_0

    .line 713
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

    .line 717
    aget p1, v3, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    aput p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 719
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/widget/WaterBox;->handleNewSensorAverageValue([F)V

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 887
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 888
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/settings/widget/WaterBox;->mRectF:Landroid/graphics/RectF;

    .line 889
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->resetPath()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 459
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 461
    iget-boolean p1, p0, Lcom/android/settings/widget/WaterBox;->mIsVisible:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 462
    iput-boolean p1, p0, Lcom/android/settings/widget/WaterBox;->mIsVisible:Z

    .line 463
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->onVisible()V

    goto :goto_0

    .line 465
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/widget/WaterBox;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 466
    iput-boolean p1, p0, Lcom/android/settings/widget/WaterBox;->mIsVisible:Z

    .line 467
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->onInvisible()V

    .line 469
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onVisibilityChanged: "

    .line 470
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "WaterBox"

    .line 472
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 852
    iput p1, p0, Lcom/android/settings/widget/WaterBox;->mColor:I

    .line 853
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->updateWaterPaintColorAndAlpha()V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 857
    iput p1, p0, Lcom/android/settings/widget/WaterBox;->mCornerRadius:F

    .line 858
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->resetPath()V

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    .line 882
    iput-boolean p1, p0, Lcom/android/settings/widget/WaterBox;->mDebug:Z

    return-void
.end method

.method public final setValue(F)V
    .locals 6

    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lcom/android/settings/widget/WaterBox;->mIsValueSet:Z

    .line 822
    invoke-direct {p0}, Lcom/android/settings/widget/WaterBox;->checkInitVars()V

    .line 823
    invoke-direct {p0, p1}, Lcom/android/settings/widget/WaterBox;->normalizeValue(F)F

    move-result p1

    .line 824
    iput p1, p0, Lcom/android/settings/widget/WaterBox;->mValue:F

    .line 825
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 828
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 829
    iget-object v4, p0, Lcom/android/settings/widget/WaterBox;->valueAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string/jumbo v5, "value"

    .line 832
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 833
    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 834
    invoke-direct {p0, p1}, Lcom/android/settings/widget/WaterBox;->getWaterAlphaByValue(F)F

    move-result p1

    .line 835
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox;->data:Lcom/android/settings/widget/WaterBox$WaterData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 838
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 839
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox;->waterAlphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string/jumbo v2, "waterAlpha"

    .line 842
    filled-new-array {v2, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 843
    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 844
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
