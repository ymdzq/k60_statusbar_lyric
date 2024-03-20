.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BatteryChartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;
    }
.end annotation


# static fields
.field private static final DIVIDER_COLOR:I


# instance fields
.field private mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private final mAxisLabelsBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTextColor:I

.field private mDividerHeight:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mHoveredIndex:I

.field private final mIndent:Landroid/graphics/Rect;

.field private final mLabelDrawnIndexes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

.field private final mPercentageBounds:[Landroid/graphics/Rect;

.field private final mPercentages:[Ljava/lang/String;

.field private mTextPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field mTouchUpEventX:F

.field private mTrapezoidColor:I

.field private mTrapezoidHOffset:F

.field private mTrapezoidHoverColor:I

.field private mTrapezoidPaint:Landroid/graphics/Paint;

.field mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

.field private mTrapezoidSolidColor:I

.field private mTrapezoidVOffset:F

.field private mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTrapezoidClicked(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAccessibilityEvent(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#CDCCC5"

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 72
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {p1, v0, v1}, [Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    .line 75
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    const/4 p1, -0x2

    .line 78
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p1, 0x1

    .line 97
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    .line 73
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {p2, v0, v1}, [Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    .line 75
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    const/4 p2, -0x2

    .line 78
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p2, 0x1

    .line 97
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeColors(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 515
    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 514
    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 519
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private drawAxisLabels(Landroid/graphics/Canvas;[Landroid/graphics/Rect;F)V
    .locals 7

    .line 449
    array-length v0, p2

    add-int/lit8 v5, v0, -0x1

    .line 450
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 452
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 453
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    aget-object v0, p2, v5

    invoke-direct {p0, p1, v5, v0, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 456
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    return-void
.end method

.method private drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V
    .locals 9

    sub-int v0, p4, p3

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 472
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    add-int v0, p3, p4

    .line 473
    div-int/lit8 v0, v0, 0x2

    .line 474
    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    invoke-direct {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move v6, p5

    .line 480
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v4, v0

    move v5, p4

    .line 482
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 485
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 486
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p3

    .line 487
    invoke-direct {p0, p2, p3, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 488
    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 489
    invoke-direct {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 492
    :cond_4
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v1, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 493
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v0, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 495
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, v1

    move v8, p5

    .line 496
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v6, v1

    move v7, v0

    .line 498
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, p4

    move v7, p5

    .line 500
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    :cond_5
    :goto_1
    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;)V
    .locals 13

    .line 336
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 337
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    .line 339
    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 340
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    int-to-float v0, v0

    .line 341
    iget-object v10, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v8, v0

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 342
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 345
    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 347
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v8, 0x0

    .line 348
    iget-object v12, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v2

    move v10, v0

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    .line 349
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 352
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 353
    iget-object v12, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move v9, v2

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    .line 354
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    return-void
.end method

.method private drawPercentage(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 359
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 363
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p2, v2, p2

    .line 364
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 361
    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTrapezoids(Landroid/graphics/Canvas;)V
    .locals 8

    .line 524
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float v2, v0, v2

    .line 530
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 534
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 536
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 538
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 542
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 543
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 544
    :cond_2
    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    .line 545
    :goto_2
    iget v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-ne v6, v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v7, v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    move v6, v3

    .line 547
    :goto_3
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_5

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    :cond_5
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 550
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v5, v0, v5

    .line 549
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 551
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    add-int/lit8 v7, v4, 0x1

    .line 552
    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v6, v0, v6

    .line 551
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 553
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 554
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 555
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 556
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 557
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 559
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 560
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 562
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v6, p0

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 371
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 372
    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    .line 373
    array-length v1, v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 375
    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v0, v0

    sub-float v16, v9, v0

    .line 376
    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v1, v1

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float v17, v0, v1

    .line 378
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    sub-int/2addr v0, v1

    int-to-float v11, v0

    .line 381
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$1;->$SwitchMap$com$android$settings$fuelgauge$batteryusage$BatteryChartViewModel$AxisLabelPosition:[I

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->axisLabelPosition()Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_0

    .line 392
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 393
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v0

    mul-float/2addr v2, v10

    int-to-float v0, v0

    add-float v3, v0, v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v4, v11

    .line 392
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 384
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v0

    mul-float v3, v8, v10

    add-float/2addr v2, v3

    int-to-float v0, v0

    add-float v3, v0, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v4, v11

    .line 383
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    move-object/from16 v1, p1

    .line 400
    invoke-direct {v6, v1, v0, v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabels(Landroid/graphics/Canvas;[Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    .line 403
    :goto_1
    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_4

    .line 406
    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->axisLabelPosition()Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    if-ne v3, v4, :cond_2

    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v9

    move v14, v3

    goto :goto_3

    .line 411
    :cond_2
    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v9

    .line 413
    :goto_3
    iget-object v15, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v0

    move/from16 v12, v16

    move v13, v0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    add-float/2addr v3, v8

    .line 416
    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 417
    aget-object v4, v4, v2

    add-float v0, v0, v17

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    .line 418
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v0, v0, v2

    sub-float v4, v3, v17

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;
    .locals 7

    .line 427
    new-array v0, p1, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p5, :cond_1

    if-nez v1, :cond_0

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    :cond_0
    add-int/lit8 v5, p1, -0x1

    if-ne v1, v5, :cond_1

    mul-float v5, v2, v4

    sub-float/2addr v3, v5

    :cond_1
    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 441
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, p4

    .line 442
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 443
    new-instance v6, Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v6, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 5

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/4 v2, 0x1

    .line 618
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    .line 619
    invoke-static {v3, v4, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 620
    invoke-static {v3, v4, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrapezoidIndex(F)I
    .locals 5

    .line 568
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 572
    aget-object v2, v2, v0

    .line 573
    iget v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static hasAnyValidTrapezoid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 608
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 609
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasOverlap([Landroid/graphics/Rect;II)Z
    .locals 1

    .line 507
    aget-object p2, p1, p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float p0, p0

    const v0, 0x40133333    # 2.3f

    mul-float/2addr p0, v0

    add-float/2addr p2, p0

    aget-object p0, p1, p3

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializeAxisLabelsBounds()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 583
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeColors(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 306
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    .line 307
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    const v0, 0x11200aa    # @android:^attr-private/materialColorSecondaryFixed

    .line 308
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 312
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    .line 313
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    .line 314
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 315
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryChartView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDividerHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    .line 323
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    .line 325
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    sget v2, Lcom/android/settings/R$dimen;->chartview_trapezoid_radius:I

    .line 330
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 332
    sget v0, Lcom/android/settings/R$dimen;->chartview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    return-void
.end method

.method private initializeTrapezoidSlots(I)V
    .locals 2

    .line 298
    new-array p1, p1, [Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    const/4 p1, 0x0

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 300
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    .line 602
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onTrapezoidClicked(Landroid/view/View;I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    if-eqz v0, :cond_2

    .line 272
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result p0

    if-ne p2, p0, :cond_1

    const/4 p2, -0x1

    .line 271
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;->onSelect(I)V

    :cond_2
    const/4 p0, 0x6

    .line 275
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method private sendAccessibilityEvent(II)Z
    .locals 2

    .line 279
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 284
    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 285
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 288
    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendAccessibilityEventForHover(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawHorizontalDividers(Landroid/graphics/Canvas;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawVerticalDividers(Landroid/graphics/Canvas;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawTrapezoids(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    .line 256
    invoke-super {p0}, Landroid/widget/ImageView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 261
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string p0, "BatteryChartView"

    const-string p1, "invalid motion event for onClick() callback"

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 239
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 240
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 222
    :cond_0
    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/16 p1, 0x100

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEventForHover(I)V

    .line 224
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 225
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return v2

    .line 212
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result p1

    .line 213
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-eq v0, p1, :cond_3

    .line 214
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/16 p1, 0x80

    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEventForHover(I)V

    :cond_3
    return v2
.end method

.method public onMeasure(II)V
    .locals 5

    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 153
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move p1, p2

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v0, v0, p1

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    .line 155
    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 163
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz p1, :cond_2

    move p1, p2

    move v0, p1

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIndent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    .line 203
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDefaultTextColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    return-void
.end method

.method public setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 117
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setViewModel(): size: %d, selectedIndex: %d."

    .line 121
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeAxisLabelsBounds()V

    .line 125
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeTrapezoidSlots(I)V

    .line 126
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasAnyValidTrapezoid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
