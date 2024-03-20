.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

.field public final accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public activeThumbIdx:I

.field public final activeTicksPaint:Landroid/graphics/Paint;

.field public final activeTrackPaint:Landroid/graphics/Paint;

.field public final changeListeners:Ljava/util/List;

.field public customThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public customThumbDrawablesForValues:Ljava/util/List;

.field public final defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public defaultThumbRadius:I

.field public defaultTrackHeight:I

.field public dirtyConfig:Z

.field public focusedThumbIdx:I

.field public forceDrawCompatHalo:Z

.field public haloColor:Landroid/content/res/ColorStateList;

.field public final haloPaint:Landroid/graphics/Paint;

.field public haloRadius:I

.field public final inactiveTicksPaint:Landroid/graphics/Paint;

.field public final inactiveTrackPaint:Landroid/graphics/Paint;

.field public isLongPress:Z

.field public labelBehavior:I

.field public final labelMaker:Lcom/google/android/material/slider/BaseSlider$1;

.field public labelPadding:I

.field public final labels:Ljava/util/List;

.field public labelsAreAnimatedIn:Z

.field public labelsInAnimator:Landroid/animation/ValueAnimator;

.field public labelsOutAnimator:Landroid/animation/ValueAnimator;

.field public lastEvent:Landroid/view/MotionEvent;

.field public minTrackSidePadding:I

.field public minWidgetHeight:I

.field public final scaledTouchSlop:I

.field public separationUnit:I

.field public stepSize:F

.field public thumbIsPressed:Z

.field public final thumbPaint:Landroid/graphics/Paint;

.field public thumbRadius:I

.field public tickColorActive:Landroid/content/res/ColorStateList;

.field public tickColorInactive:Landroid/content/res/ColorStateList;

.field public tickVisible:Z

.field public ticksCoordinates:[F

.field public touchDownX:F

.field public final touchListeners:Ljava/util/List;

.field public touchPosition:F

.field public trackColorActive:Landroid/content/res/ColorStateList;

.field public trackColorInactive:Landroid/content/res/ColorStateList;

.field public trackHeight:I

.field public trackSidePadding:I

.field public trackWidth:I

.field public valueFrom:F

.field public valueTo:F

.field public values:Ljava/util/ArrayList;

.field public widgetHeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/slider/BaseSlider;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0406c9    # @attr/sliderStyle

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const v0, 0x7f14081e    # @style/Widget.MaterialComponents.Slider

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 10
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 13
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 14
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 16
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 18
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 19
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 22
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 24
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 28
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 30
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 32
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 33
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ce7    # @dimen/mtrl_slider_widget_height '48.0dp'

    .line 36
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->minWidgetHeight:I

    const v5, 0x7f070ce6    # @dimen/mtrl_slider_track_side_padding '16.0dp'

    .line 37
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    .line 38
    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    const v5, 0x7f070ce4    # @dimen/mtrl_slider_thumb_radius '10.0dp'

    .line 39
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    const v5, 0x7f070ce5    # @dimen/mtrl_slider_track_height '4.0dp'

    .line 40
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->defaultTrackHeight:I

    const v5, 0x7f070ce0    # @dimen/mtrl_slider_label_padding '4.0dp'

    .line 41
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 42
    new-instance v4, Lcom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$1;

    .line 43
    sget-object v6, Lcom/google/android/material/R$styleable;->Slider:[I

    const v8, 0x7f14081e    # @style/Widget.MaterialComponents.Slider

    new-array v9, p1, [I

    move-object v4, v3

    move-object v5, p2

    move v7, p3

    .line 44
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    .line 45
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    const/4 p3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 47
    iget p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    const/4 p3, 0x2

    .line 48
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/16 p3, 0x12

    .line 49
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, p3

    goto :goto_0

    :cond_0
    const/16 v5, 0x14

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x13

    .line 50
    :goto_1
    invoke-static {v3, p2, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const v4, 0x7f060374    # @color/material_slider_inactive_track_color 'res/color/material_slider_inactive_track_color.xml'

    .line 51
    invoke-static {v4, v3}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 52
    :goto_2
    invoke-virtual {p0, v4}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    invoke-static {v3, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const p3, 0x7f060371    # @color/material_slider_active_track_color 'res/color/material_slider_active_track_color.xml'

    .line 54
    invoke-static {p3, v3}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 55
    :goto_3
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    const/16 p3, 0x9

    .line 56
    invoke-static {v3, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 57
    invoke-virtual {v2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const/16 p3, 0xc

    .line 58
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    invoke-static {v3, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 60
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/16 p3, 0xd

    .line 61
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    const/4 p3, 0x5

    .line 62
    invoke-static {v3, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    const p3, 0x7f060372    # @color/material_slider_halo_color 'res/color/material_slider_halo_color.xml'

    .line 63
    invoke-static {p3, v3}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 64
    :goto_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    const/16 p3, 0x11

    .line 65
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    const/16 p3, 0xe

    .line 66
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v5, p3

    goto :goto_5

    :cond_6
    const/16 v5, 0x10

    :goto_5
    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    const/16 p3, 0xf

    .line 67
    :goto_6
    invoke-static {v3, p2, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    const v4, 0x7f060373    # @color/material_slider_inactive_tick_marks_color 'res/color/material_slider_inactive_tick_marks_color.xml'

    .line 68
    invoke-static {v4, v3}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 69
    :goto_7
    invoke-virtual {p0, v4}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-static {v3, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_8

    :cond_9
    const p3, 0x7f060370    # @color/material_slider_active_tick_marks_color 'res/color/material_slider_active_tick_marks_color.xml'

    .line 71
    invoke-static {p3, v3}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 72
    :goto_8
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    const/16 p3, 0xb

    .line 73
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    const/4 p3, 0x6

    .line 74
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    const/16 p3, 0xa

    .line 75
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    const/16 p3, 0x15

    .line 76
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    const/4 p3, 0x7

    .line 77
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    .line 78
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_a

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 80
    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 83
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode()V

    .line 84
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 85
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 86
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 2
    mul-int/lit8 p0, p0, 0x2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    invoke-virtual {p1, v2, v2, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    int-to-float p0, p0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    div-float/2addr p0, v3

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float/2addr v0, p0

    .line 32
    float-to-int v0, v0

    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr v1, p0

    .line 35
    float-to-int p0, v1

    .line 36
    invoke-virtual {p1, v2, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    :goto_0
    return-void
    .line 40
.end method

.method public final calculateTrackCenter()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 2
    div-int/lit8 v0, v0, 0x2

    .line 4
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    const/4 v4, 0x3

    .line 12
    if-ne v1, v4, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    if-eqz v2, :cond_2

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 29
    move-result v3

    .line 32
    :cond_2
    add-int/2addr v0, v3

    .line 33
    return v0
    .line 34
.end method

.method public final createLabelAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    if-eqz p1, :cond_0

    .line 5
    move v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 12
    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 15
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Float;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    move v0, v1

    .line 40
    :cond_3
    const/4 v1, 0x2

    .line 41
    new-array v1, v1, [F

    .line 42
    const/4 v3, 0x0

    .line 44
    aput v2, v1, v3

    .line 45
    const/4 v2, 0x1

    .line 47
    aput v0, v1, v2

    .line 48
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 50
    move-result-object v0

    .line 53
    if-eqz p1, :cond_4

    .line 54
    const-wide/16 v1, 0x53

    .line 56
    goto :goto_2

    .line 58
    :cond_4
    const-wide/16 v1, 0x75

    .line 59
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    if-eqz p1, :cond_5

    .line 64
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 66
    goto :goto_3

    .line 68
    :cond_5
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    .line 69
    :goto_3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$2;

    .line 74
    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$2;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    .line 76
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    return-object v0
    .line 82
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 5
    invoke-virtual {p0, p4}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 7
    move-result p0

    .line 10
    int-to-float p2, p2

    .line 11
    mul-float/2addr p0, p2

    .line 12
    float-to-int p0, p0

    .line 13
    add-int/2addr v0, p0

    .line 14
    int-to-float p0, v0

    .line 15
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 20
    move-result p2

    .line 23
    int-to-float p2, p2

    .line 24
    const/high16 p4, 0x40000000    # 2.0f

    .line 25
    div-float/2addr p2, p4

    .line 27
    sub-float/2addr p0, p2

    .line 28
    int-to-float p2, p3

    .line 29
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result p3

    .line 37
    int-to-float p3, p3

    .line 38
    div-float/2addr p3, p4

    .line 39
    sub-float/2addr p2, p3

    .line 40
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    return-void
    .line 50
.end method

.method public final drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 5
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 16
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 42
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 49
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    .line 69
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    .line 85
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 102
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 104
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 111
    const/16 v0, 0x3f

    .line 113
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    return-void
    .line 118
.end method

.method public final ensureLabelsRemoved()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 13
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 16
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$3;

    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$3;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public forceDrawCompatHalo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 2
    return-void
    .line 4
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 2
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getActiveRange()[F
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Float;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 41
    move-result v1

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 49
    move-result p0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v4, 0x2

    .line 54
    if-eqz p0, :cond_1

    .line 55
    new-array p0, v4, [F

    .line 57
    aput v0, p0, v2

    .line 59
    aput v1, p0, v3

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    new-array p0, v4, [F

    .line 64
    aput v1, p0, v2

    .line 66
    aput v0, p0, v3

    .line 68
    :goto_0
    return-object p0
    .line 70
.end method

.method public final getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getMinSeparation()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getValueFrom()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 2
    return p0
    .line 4
.end method

.method public getValueTo()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 2
    return p0
    .line 4
.end method

.method public getValues()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public final isInVerticalScrollingContainer()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    move-object v0, p0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 15
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    :cond_0
    move v1, v2

    .line 28
    :cond_1
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    return v2

    .line 37
    :cond_2
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return v1
    .line 43
.end method

.method public final isMultipleOfStepSize(F)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object p0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 22
    invoke-virtual {v0, p1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 28
    move-result-wide p0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 32
    move-result-wide v0

    .line 35
    long-to-double v0, v0

    .line 36
    sub-double/2addr v0, p0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 38
    move-result-wide p0

    .line 41
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 42
    cmpg-double p0, p0, v0

    .line 47
    if-gez p0, :cond_0

    .line 49
    const/4 p0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    :goto_0
    return p0
    .line 54
.end method

.method public final isRtl()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
    .line 13
.end method

.method public final maybeCalculateTicksCoordinates()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    if-gtz v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 10
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 13
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 15
    sub-float/2addr v0, v1

    .line 17
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 18
    div-float/2addr v0, v1

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    add-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 25
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 27
    mul-int/lit8 v2, v2, 0x2

    .line 29
    div-int/2addr v1, v2

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 38
    if-eqz v1, :cond_1

    .line 40
    array-length v1, v1

    .line 42
    mul-int/lit8 v2, v0, 0x2

    .line 43
    if-eq v1, v2, :cond_2

    .line 45
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    .line 47
    new-array v1, v1, [F

    .line 49
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 51
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 53
    int-to-float v1, v1

    .line 55
    add-int/lit8 v2, v0, -0x1

    .line 56
    int-to-float v2, v2

    .line 58
    div-float/2addr v1, v2

    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    .line 61
    if-ge v2, v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 65
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 67
    int-to-float v4, v4

    .line 69
    div-int/lit8 v5, v2, 0x2

    .line 70
    int-to-float v5, v5

    .line 72
    mul-float/2addr v5, v1

    .line 73
    add-float/2addr v5, v4

    .line 74
    aput v5, v3, v2

    .line 75
    add-int/lit8 v4, v2, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    .line 79
    move-result v5

    .line 82
    int-to-float v5, v5

    .line 83
    aput v5, v3, v4

    .line 84
    add-int/lit8 v2, v2, 0x2

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    return-void
    .line 89
.end method

.method public final moveFocus(I)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2
    int-to-long v1, v0

    .line 4
    int-to-long v3, p1

    .line 5
    add-long/2addr v1, v3

    .line 6
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result p1

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr p1, v3

    .line 14
    int-to-long v4, p1

    .line 15
    const-wide/16 v6, 0x0

    .line 16
    cmp-long p1, v1, v6

    .line 18
    if-gez p1, :cond_0

    .line 20
    move-wide v1, v6

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmp-long p1, v1, v4

    .line 24
    if-lez p1, :cond_1

    .line 26
    move-wide v1, v4

    .line 28
    :cond_1
    :goto_0
    long-to-int p1, v1

    .line 29
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 30
    if-ne p1, v0, :cond_2

    .line 32
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 36
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 46
    return v3
    .line 49
.end method

.method public final moveFocusInAbsoluteDirection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/high16 v0, -0x80000000

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    const p1, 0x7fffffff

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    neg-int p1, p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 17
    return-void
    .line 20
.end method

.method public final normalizeValue(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 2
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 5
    sub-float/2addr v1, v0

    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    sub-float/2addr p0, p1

    .line 17
    return p0

    .line 18
    :cond_0
    return p1
    .line 19
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 23
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 25
    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [I

    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 41
    const/4 v4, 0x0

    .line 44
    aget v3, v3, v4

    .line 45
    iput v3, v1, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 47
    iget-object v3, v1, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 51
    iget-object v1, v1, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Lcom/google/android/material/tooltip/TooltipDrawable$1;

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    return-void
    .line 60
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 30
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi18;

    .line 32
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    iget-object v2, v2, Lcom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Landroid/view/ViewOverlay;

    .line 38
    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 43
    move-result-object v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v1, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Lcom/google/android/material/tooltip/TooltipDrawable$1;

    .line 53
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 59
    return-void
    .line 62
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    .line 15
    move-result v0

    .line 18
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 21
    move-result-object v2

    .line 24
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 25
    int-to-float v4, v3

    .line 27
    const/4 v5, 0x1

    .line 28
    aget v6, v2, v5

    .line 29
    int-to-float v7, v1

    .line 31
    mul-float/2addr v6, v7

    .line 32
    add-float v9, v6, v4

    .line 33
    add-int/2addr v3, v1

    .line 35
    int-to-float v11, v3

    .line 36
    cmpg-float v1, v9, v11

    .line 37
    if-gez v1, :cond_1

    .line 39
    int-to-float v12, v0

    .line 41
    iget-object v13, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 42
    move-object v8, p1

    .line 44
    move v10, v12

    .line 45
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 49
    int-to-float v9, v1

    .line 51
    const/4 v1, 0x0

    .line 52
    aget v2, v2, v1

    .line 53
    mul-float/2addr v2, v7

    .line 55
    add-float v11, v2, v9

    .line 56
    cmpl-float v2, v11, v9

    .line 58
    if-lez v2, :cond_2

    .line 60
    int-to-float v12, v0

    .line 62
    iget-object v13, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 63
    move-object v8, p1

    .line 65
    move v10, v12

    .line 66
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 70
    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/Float;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 80
    move-result v2

    .line 83
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 84
    cmpl-float v2, v2, v3

    .line 86
    if-lez v2, :cond_3

    .line 88
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 92
    move-result-object v3

    .line 95
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 96
    int-to-float v4, v4

    .line 98
    aget v6, v3, v5

    .line 99
    int-to-float v2, v2

    .line 101
    mul-float/2addr v6, v2

    .line 102
    add-float v10, v6, v4

    .line 103
    aget v3, v3, v1

    .line 105
    mul-float/2addr v3, v2

    .line 107
    add-float v8, v3, v4

    .line 108
    int-to-float v11, v0

    .line 110
    iget-object v12, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 111
    move-object v7, p1

    .line 113
    move v9, v11

    .line 114
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 118
    const/4 v3, -0x1

    .line 120
    const/4 v4, 0x2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 124
    const/4 v6, 0x0

    .line 126
    cmpg-float v2, v2, v6

    .line 127
    if-gtz v2, :cond_4

    .line 129
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    .line 132
    move-result-object v2

    .line 135
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 136
    aget v7, v2, v1

    .line 138
    array-length v6, v6

    .line 140
    div-int/2addr v6, v4

    .line 141
    add-int/2addr v6, v3

    .line 142
    int-to-float v6, v6

    .line 143
    mul-float/2addr v7, v6

    .line 144
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 145
    move-result v6

    .line 148
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 149
    aget v2, v2, v5

    .line 151
    array-length v7, v7

    .line 153
    div-int/2addr v7, v4

    .line 154
    add-int/2addr v7, v3

    .line 155
    int-to-float v7, v7

    .line 156
    mul-float/2addr v2, v7

    .line 157
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 158
    move-result v2

    .line 161
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 162
    mul-int/2addr v6, v4

    .line 164
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 165
    invoke-virtual {p1, v7, v1, v6, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 167
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 170
    mul-int/2addr v2, v4

    .line 172
    sub-int v8, v2, v6

    .line 173
    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 177
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 180
    array-length v7, v6

    .line 182
    sub-int/2addr v7, v2

    .line 183
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {p1, v6, v2, v7, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 186
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 189
    const/4 v6, 0x3

    .line 191
    if-nez v2, :cond_7

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 194
    move-result v2

    .line 197
    if-nez v2, :cond_7

    .line 198
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 200
    if-ne v2, v6, :cond_6

    .line 202
    move v2, v5

    .line 204
    goto :goto_1

    .line 205
    :cond_6
    move v2, v1

    .line 206
    :goto_1
    if-eqz v2, :cond_11

    .line 207
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 209
    move-result v2

    .line 212
    if-eqz v2, :cond_11

    .line 213
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 215
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 217
    move-result v7

    .line 220
    if-eqz v7, :cond_8

    .line 221
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 223
    int-to-float v7, v7

    .line 225
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 226
    iget v9, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 228
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v8

    .line 233
    check-cast v8, Ljava/lang/Float;

    .line 234
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 236
    move-result v8

    .line 239
    invoke-virtual {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 240
    move-result v8

    .line 243
    int-to-float v2, v2

    .line 244
    mul-float/2addr v8, v2

    .line 245
    add-float/2addr v8, v7

    .line 246
    float-to-int v2, v8

    .line 247
    int-to-float v2, v2

    .line 248
    int-to-float v7, v0

    .line 249
    iget v8, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 250
    int-to-float v8, v8

    .line 252
    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 253
    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    :cond_8
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 258
    if-ne v2, v3, :cond_b

    .line 260
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 262
    if-ne v2, v6, :cond_9

    .line 264
    move v2, v5

    .line 266
    goto :goto_2

    .line 267
    :cond_9
    move v2, v1

    .line 268
    :goto_2
    if-eqz v2, :cond_a

    .line 269
    goto :goto_3

    .line 271
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 272
    goto/16 :goto_6

    .line 275
    :cond_b
    :goto_3
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 277
    if-ne v2, v4, :cond_c

    .line 279
    goto/16 :goto_6

    .line 281
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 283
    if-nez v2, :cond_d

    .line 285
    iput-boolean v5, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 287
    invoke-virtual {p0, v5}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    .line 289
    move-result-object v2

    .line 292
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 293
    const/4 v3, 0x0

    .line 295
    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 296
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    :cond_d
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 301
    check-cast v2, Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    move-result-object v2

    .line 308
    move v3, v1

    .line 309
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 312
    move-result v4

    .line 315
    if-ge v3, v4, :cond_f

    .line 316
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    move-result v4

    .line 321
    if-eqz v4, :cond_f

    .line 322
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 324
    if-ne v3, v4, :cond_e

    .line 326
    goto :goto_5

    .line 328
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    move-result-object v4

    .line 332
    check-cast v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 333
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    move-result-object v5

    .line 340
    check-cast v5, Ljava/lang/Float;

    .line 341
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 343
    move-result v5

    .line 346
    invoke-virtual {p0, v4, v5}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 347
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 350
    goto :goto_4

    .line 352
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    move-result v3

    .line 356
    if-eqz v3, :cond_10

    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    move-result-object v2

    .line 362
    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 363
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 365
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 367
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    move-result-object v3

    .line 372
    check-cast v3, Ljava/lang/Float;

    .line 373
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 375
    move-result v3

    .line 378
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 379
    goto :goto_6

    .line 382
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 383
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 385
    check-cast v0, Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 389
    move-result v0

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    move-result-object v0

    .line 396
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 399
    move-result p0

    .line 402
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    move-result-object p0

    .line 406
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 407
    move-result-object p0

    .line 410
    const-string v0, "Not enough labels(%d) to display all the values(%d)"

    .line 411
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 413
    move-result-object p0

    .line 416
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 417
    throw p1

    .line 420
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 421
    :goto_6
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 424
    move v8, v1

    .line 426
    :goto_7
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 429
    move-result v1

    .line 432
    if-ge v8, v1, :cond_15

    .line 433
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 435
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 437
    move-result-object v1

    .line 440
    check-cast v1, Ljava/lang/Float;

    .line 441
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 443
    move-result v5

    .line 446
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 447
    if-eqz v6, :cond_12

    .line 449
    move-object v1, p0

    .line 451
    move-object v2, p1

    .line 452
    move v3, v7

    .line 453
    move v4, v0

    .line 454
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 455
    goto :goto_8

    .line 458
    :cond_12
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 459
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 461
    move-result v1

    .line 464
    if-ge v8, v1, :cond_13

    .line 465
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 467
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    move-result-object v1

    .line 472
    move-object v6, v1

    .line 473
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 474
    move-object v1, p0

    .line 476
    move-object v2, p1

    .line 477
    move v3, v7

    .line 478
    move v4, v0

    .line 479
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 480
    goto :goto_8

    .line 483
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 484
    move-result v1

    .line 487
    if-nez v1, :cond_14

    .line 488
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 490
    int-to-float v1, v1

    .line 492
    invoke-virtual {p0, v5}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 493
    move-result v2

    .line 496
    int-to-float v3, v7

    .line 497
    mul-float/2addr v2, v3

    .line 498
    add-float/2addr v2, v1

    .line 499
    int-to-float v1, v0

    .line 500
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 501
    int-to-float v3, v3

    .line 503
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 504
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 506
    :cond_14
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 509
    move-object v1, p0

    .line 511
    move-object v2, p1

    .line 512
    move v3, v7

    .line 513
    move v4, v0

    .line 514
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 515
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 518
    goto :goto_7

    .line 520
    :cond_15
    return-void
    .line 521
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 8
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 10
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 12
    invoke-virtual {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    const p3, 0x7fffffff

    .line 19
    if-eq p2, p1, :cond_4

    .line 22
    const/4 p1, 0x2

    .line 24
    const/high16 v0, -0x80000000

    .line 25
    if-eq p2, p1, :cond_3

    .line 27
    const/16 p1, 0x11

    .line 29
    if-eq p2, p1, :cond_2

    .line 31
    const/16 p1, 0x42

    .line 33
    if-eq p2, p1, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 46
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 53
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 55
    invoke-virtual {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 57
    :goto_1
    return-void
    .line 60
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 25
    const/16 v3, 0x42

    .line 27
    const/16 v4, 0x3d

    .line 29
    const/4 v5, 0x0

    .line 31
    const/16 v6, 0x51

    .line 32
    const/16 v7, 0x46

    .line 34
    const/16 v8, 0x45

    .line 36
    const/4 v9, -0x1

    .line 38
    if-ne v0, v9, :cond_9

    .line 39
    if-eq p1, v4, :cond_5

    .line 41
    if-eq p1, v3, :cond_4

    .line 43
    if-eq p1, v6, :cond_3

    .line 45
    if-eq p1, v8, :cond_2

    .line 47
    if-eq p1, v7, :cond_3

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 51
    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)V

    .line 55
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)V

    .line 61
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 67
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 73
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 79
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 83
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 95
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    move-result-object v5

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 110
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object v5

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    :goto_0
    if-eqz v5, :cond_8

    .line 121
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    move-result p0

    .line 126
    goto :goto_1

    .line 127
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 128
    move-result p0

    .line 131
    :goto_1
    return p0

    .line 132
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 133
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 135
    move-result v10

    .line 138
    or-int/2addr v0, v10

    .line 139
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 140
    const/high16 v10, 0x3f800000    # 1.0f

    .line 142
    const/4 v11, 0x0

    .line 144
    if-eqz v0, :cond_c

    .line 145
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 147
    cmpl-float v11, v0, v11

    .line 149
    if-nez v11, :cond_a

    .line 151
    goto :goto_2

    .line 153
    :cond_a
    move v10, v0

    .line 154
    :goto_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 155
    iget v11, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 157
    sub-float/2addr v0, v11

    .line 159
    div-float/2addr v0, v10

    .line 160
    const/16 v11, 0x14

    .line 161
    int-to-float v11, v11

    .line 163
    cmpg-float v12, v0, v11

    .line 164
    if-gtz v12, :cond_b

    .line 166
    goto :goto_3

    .line 168
    :cond_b
    div-float/2addr v0, v11

    .line 169
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 170
    move-result v0

    .line 173
    int-to-float v0, v0

    .line 174
    mul-float/2addr v10, v0

    .line 175
    goto :goto_3

    .line 176
    :cond_c
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 177
    cmpl-float v11, v0, v11

    .line 179
    if-nez v11, :cond_d

    .line 181
    goto :goto_3

    .line 183
    :cond_d
    move v10, v0

    .line 184
    :goto_3
    const/16 v0, 0x15

    .line 185
    if-eq p1, v0, :cond_12

    .line 187
    const/16 v0, 0x16

    .line 189
    if-eq p1, v0, :cond_10

    .line 191
    if-eq p1, v8, :cond_f

    .line 193
    if-eq p1, v7, :cond_e

    .line 195
    if-eq p1, v6, :cond_e

    .line 197
    goto :goto_5

    .line 199
    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    move-result-object v5

    .line 203
    goto :goto_5

    .line 204
    :cond_f
    neg-float v0, v10

    .line 205
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v5

    .line 209
    goto :goto_5

    .line 210
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 211
    move-result v0

    .line 214
    if-eqz v0, :cond_11

    .line 215
    neg-float v10, v10

    .line 217
    :cond_11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 218
    move-result-object v5

    .line 221
    goto :goto_5

    .line 222
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 223
    move-result v0

    .line 226
    if-eqz v0, :cond_13

    .line 227
    goto :goto_4

    .line 229
    :cond_13
    neg-float v10, v10

    .line 230
    :goto_4
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    move-result-object v5

    .line 234
    :goto_5
    if-eqz v5, :cond_15

    .line 235
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 237
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 239
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/Float;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 247
    move-result p1

    .line 250
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 251
    move-result p2

    .line 254
    add-float/2addr p2, p1

    .line 255
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 256
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(FI)Z

    .line 258
    move-result p1

    .line 261
    if-eqz p1, :cond_14

    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 267
    :cond_14
    return v2

    .line 270
    :cond_15
    const/16 v0, 0x17

    .line 271
    if-eq p1, v0, :cond_19

    .line 273
    if-eq p1, v4, :cond_16

    .line 275
    if-eq p1, v3, :cond_19

    .line 277
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 279
    move-result p0

    .line 282
    return p0

    .line 283
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 284
    move-result p1

    .line 287
    if-eqz p1, :cond_17

    .line 288
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 290
    move-result p0

    .line 293
    return p0

    .line 294
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 295
    move-result p1

    .line 298
    if-eqz p1, :cond_18

    .line 299
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 301
    move-result p0

    .line 304
    return p0

    .line 305
    :cond_18
    return v1

    .line 306
    :cond_19
    iput v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 309
    return v2

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 314
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v3, 0x3

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-eqz v1, :cond_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 27
    move-result v2

    .line 30
    :cond_2
    add-int/2addr p2, v2

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    .line 32
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p2

    .line 37
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 38
    return-void
    .line 41
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 11
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 13
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 15
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 17
    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 21
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 24
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 26
    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 11
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 13
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 15
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 26
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 28
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 32
    move-result p0

    .line 35
    iput-boolean p0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 36
    return-object v1
    .line 38
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 2
    mul-int/lit8 p2, p2, 0x2

    .line 4
    sub-int/2addr p1, p2

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 17
    return-void
    .line 20
.end method

.method public final onStartTrackingTouch()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 21
    const/4 p0, 0x0

    .line 24
    throw p0
    .line 25
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 13
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 14
    int-to-float v2, v2

    .line 16
    sub-float v2, v0, v2

    .line 17
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 19
    int-to-float v3, v3

    .line 21
    div-float/2addr v2, v3

    .line 22
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 23
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result v2

    .line 29
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 30
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result v2

    .line 37
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v2, :cond_9

    .line 45
    if-eq v2, v3, :cond_5

    .line 47
    const/4 v4, 0x2

    .line 49
    if-eq v2, v4, :cond_1

    .line 50
    goto/16 :goto_1

    .line 52
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 54
    if-nez v2, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 64
    sub-float/2addr v0, v2

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 67
    move-result v0

    .line 70
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 71
    int-to-float v2, v2

    .line 73
    cmpg-float v0, v0, v2

    .line 74
    if-gez v0, :cond_2

    .line 76
    return v1

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    move-result-object v0

    .line 82
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 89
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 105
    goto/16 :goto_1

    .line 108
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 110
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 112
    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 116
    move-result v0

    .line 119
    if-nez v0, :cond_6

    .line 120
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 122
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 124
    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 128
    move-result v1

    .line 131
    sub-float/2addr v0, v1

    .line 132
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 133
    move-result v0

    .line 136
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 137
    int-to-float v1, v1

    .line 139
    cmpg-float v0, v0, v1

    .line 140
    if-gtz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 144
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 146
    move-result v0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 150
    move-result v1

    .line 153
    sub-float/2addr v0, v1

    .line 154
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 155
    move-result v0

    .line 158
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 159
    int-to-float v1, v1

    .line 161
    cmpg-float v0, v0, v1

    .line 162
    if-gtz v0, :cond_6

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 166
    move-result v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 172
    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 175
    const/4 v1, -0x1

    .line 177
    if-eq v0, v1, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()V

    .line 180
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 183
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 185
    check-cast v0, Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    move-result v1

    .line 196
    if-nez v1, :cond_7

    .line 197
    goto :goto_0

    .line 199
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object p0

    .line 203
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 204
    const/4 p0, 0x0

    .line 207
    throw p0

    .line 208
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 209
    goto :goto_1

    .line 212
    :cond_9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    .line 215
    move-result v0

    .line 218
    if-eqz v0, :cond_a

    .line 219
    goto :goto_1

    .line 221
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 222
    move-result-object v0

    .line 225
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    .line 229
    move-result v0

    .line 232
    if-nez v0, :cond_b

    .line 233
    goto :goto_1

    .line 235
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 236
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 250
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 253
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 255
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 258
    move-result-object p1

    .line 261
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 262
    return v3
    .line 264
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    if-eqz p2, :cond_0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi18;

    .line 7
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 28
    check-cast p2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 29
    iget-object v0, p1, Lcom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Landroid/view/ViewOverlay;

    .line 31
    invoke-virtual {v0, p2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method

.method public pickActiveThumb()Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 11
    move-result v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    sub-float v0, v3, v0

    .line 19
    :cond_1
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 21
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 23
    invoke-static {v3, v4, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 29
    move-result v3

    .line 32
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 33
    int-to-float v4, v4

    .line 35
    mul-float/2addr v3, v4

    .line 36
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 37
    int-to-float v4, v4

    .line 39
    add-float/2addr v3, v4

    .line 40
    const/4 v4, 0x0

    .line 41
    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 42
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/Float;

    .line 50
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 52
    move-result v5

    .line 55
    sub-float/2addr v5, v0

    .line 56
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 57
    move-result v5

    .line 60
    move v6, v1

    .line 61
    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v7

    .line 67
    if-ge v6, v7, :cond_8

    .line 68
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/Float;

    .line 76
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 78
    move-result v7

    .line 81
    sub-float/2addr v7, v0

    .line 82
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 83
    move-result v7

    .line 86
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v8

    .line 92
    check-cast v8, Ljava/lang/Float;

    .line 93
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 95
    move-result v8

    .line 98
    invoke-virtual {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 99
    move-result v8

    .line 102
    iget v9, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 103
    int-to-float v9, v9

    .line 105
    mul-float/2addr v8, v9

    .line 106
    iget v9, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 107
    int-to-float v9, v9

    .line 109
    add-float/2addr v8, v9

    .line 110
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 111
    move-result v9

    .line 114
    if-le v9, v1, :cond_2

    .line 115
    goto :goto_4

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 118
    move-result v9

    .line 121
    const/4 v10, 0x0

    .line 122
    if-eqz v9, :cond_3

    .line 123
    sub-float v9, v8, v3

    .line 125
    cmpl-float v9, v9, v10

    .line 127
    if-lez v9, :cond_4

    .line 129
    goto :goto_1

    .line 131
    :cond_3
    sub-float v9, v8, v3

    .line 132
    cmpg-float v9, v9, v10

    .line 134
    if-gez v9, :cond_4

    .line 136
    :goto_1
    move v9, v1

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move v9, v4

    .line 140
    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 141
    move-result v10

    .line 144
    if-gez v10, :cond_5

    .line 145
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 147
    goto :goto_3

    .line 149
    :cond_5
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    .line 150
    move-result v10

    .line 153
    if-nez v10, :cond_7

    .line 154
    sub-float/2addr v8, v3

    .line 156
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 157
    move-result v8

    .line 160
    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 161
    int-to-float v10, v10

    .line 163
    cmpg-float v8, v8, v10

    .line 164
    if-gez v8, :cond_6

    .line 166
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 168
    return v4

    .line 170
    :cond_6
    if-eqz v9, :cond_7

    .line 171
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 173
    :goto_3
    move v5, v7

    .line 175
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 176
    goto :goto_0

    .line 178
    :cond_8
    :goto_4
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 179
    if-eq p0, v2, :cond_9

    .line 181
    goto :goto_5

    .line 183
    :cond_9
    move v1, v4

    .line 184
    :goto_5
    return v1
    .line 185
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 24
    return-void
    .line 27
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    return-void
    .line 14
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 12
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 19
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "index out of range"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method

.method public setHaloRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 23
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 25
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 27
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 31
    return-void
    .line 34
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 27
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 29
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 42
    const/16 v0, 0x3f

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    return-void
    .line 52
.end method

.method public setLabelBehavior(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setStepSize(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-ltz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 13
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 18
    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object p1

    .line 27
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v1

    .line 33
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 34
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object p0

    .line 39
    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    const-string p1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 44
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
    .line 53
.end method

.method public setThumbElevation(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbRadius(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 7
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 9
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 11
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 13
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 16
    int-to-float v1, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    .line 20
    move-result-object v3

    .line 23
    iput-object v3, v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 24
    invoke-static {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 26
    iput-object v3, v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 29
    invoke-static {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 31
    iput-object v3, v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 34
    invoke-static {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 36
    iput-object v3, v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 39
    invoke-static {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)V

    .line 44
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 47
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 49
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 52
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 55
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 57
    mul-int/lit8 v0, v0, 0x2

    .line 59
    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateWidgetLayout()V

    .line 93
    return-void
    .line 96
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 7
    return-void
    .line 10
.end method

.method public setThumbStrokeWidth(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 4
    iput p1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 11
    return-void
    .line 14
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    return-void
    .line 25
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    return-void
    .line 25
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    return-void
    .line 25
.end method

.method public setTrackHeight(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 6
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 8
    int-to-float p1, p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 14
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 16
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 22
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 24
    int-to-float v0, v0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    div-float/2addr v0, v1

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 33
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 35
    int-to-float v0, v0

    .line 37
    div-float/2addr v0, v1

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateWidgetLayout()V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    return-void
    .line 25
.end method

.method public final setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 3

    .line 1
    float-to-int v0, p2

    .line 2
    int-to-float v0, v0

    .line 3
    cmpl-float v0, v0, p2

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string v0, "%.0f"

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "%.2f"

    .line 11
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    iget-object v1, p1, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 25
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    iput-object v0, p1, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 33
    iget-object v0, p1, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 35
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 38
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 40
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 45
    move-result p2

    .line 48
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 49
    int-to-float v1, v1

    .line 51
    mul-float/2addr p2, v1

    .line 52
    float-to-int p2, p2

    .line 53
    add-int/2addr v0, p2

    .line 54
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    .line 55
    move-result p2

    .line 58
    div-int/lit8 p2, p2, 0x2

    .line 59
    sub-int/2addr v0, p2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    .line 62
    move-result p2

    .line 65
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 66
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 68
    add-int/2addr v1, v2

    .line 70
    sub-int/2addr p2, v1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    .line 72
    move-result v1

    .line 75
    sub-int v1, p2, v1

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    .line 78
    move-result v2

    .line 81
    add-int/2addr v2, v0

    .line 82
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    new-instance p2, Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v0

    .line 91
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 92
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 95
    move-result-object v0

    .line 98
    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 102
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi18;

    .line 105
    move-result-object p0

    .line 108
    iget-object p0, p0, Lcom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Landroid/view/ViewOverlay;

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
    .line 114
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 10
    return-void
    .line 13
.end method

.method public final setValuesInternal(Ljava/util/ArrayList;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 32
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 35
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 40
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 43
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v2

    .line 56
    if-le v1, v2, :cond_4

    .line 57
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 59
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v2

    .line 66
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 67
    check-cast v3, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v3

    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 77
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v2

    .line 84
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 94
    check-cast v3, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 95
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 97
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 99
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi18;

    .line 105
    move-result-object v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    iget-object v4, v4, Lcom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Landroid/view/ViewOverlay;

    .line 111
    invoke-virtual {v4, v3}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 116
    move-result-object v4

    .line 119
    if-nez v4, :cond_2

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    goto :goto_0

    .line 125
    :cond_2
    iget-object v3, v3, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Lcom/google/android/material/tooltip/TooltipDrawable$1;

    .line 126
    invoke-virtual {v4, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 135
    check-cast v1, Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result v1

    .line 142
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 145
    move-result v2

    .line 148
    const/4 v3, 0x0

    .line 149
    if-ge v1, v2, :cond_c

    .line 150
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$1;

    .line 152
    iget-object v2, v1, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    move-result-object v4

    .line 159
    iget-object v5, v1, Lcom/google/android/material/slider/BaseSlider$1;->val$attrs:Landroid/util/AttributeSet;

    .line 160
    sget-object v6, Lcom/google/android/material/R$styleable;->Slider:[I

    .line 162
    iget v7, v1, Lcom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    .line 164
    const v8, 0x7f14081e    # @style/Widget.MaterialComponents.Slider

    .line 166
    new-array v9, v0, [I

    .line 169
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 171
    move-result-object v1

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    move-result-object v2

    .line 178
    const/16 v4, 0x8

    .line 179
    const v5, 0x7f140840    # @style/Widget.MaterialComponents.Tooltip

    .line 181
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 184
    move-result v10

    .line 187
    new-instance v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 188
    invoke-direct {v4, v2, v10}, Lcom/google/android/material/tooltip/TooltipDrawable;-><init>(Landroid/content/Context;I)V

    .line 190
    iget-object v6, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 193
    sget-object v8, Lcom/google/android/material/R$styleable;->Tooltip:[I

    .line 195
    new-array v11, v0, [I

    .line 197
    const/4 v7, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 201
    move-result-object v2

    .line 204
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 205
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object v5

    .line 210
    const v6, 0x7f070cfd    # @dimen/mtrl_tooltip_arrowSize '14.0dp'

    .line 211
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 214
    move-result v5

    .line 217
    iput v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 218
    iget-object v5, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 220
    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 222
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    new-instance v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 227
    invoke-direct {v6, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 229
    invoke-virtual {v4}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/OffsetEdgeTreatment;

    .line 232
    move-result-object v5

    .line 235
    iput-object v5, v6, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 236
    new-instance v5, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 238
    invoke-direct {v5, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 240
    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 243
    const/4 v5, 0x6

    .line 246
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 247
    move-result-object v5

    .line 250
    iget-object v6, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 251
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 253
    move-result v6

    .line 256
    if-nez v6, :cond_5

    .line 257
    iput-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 259
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 261
    iput-boolean p1, v5, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 263
    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 265
    :cond_5
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 268
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 270
    move-result v6

    .line 273
    if-eqz v6, :cond_6

    .line 274
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 276
    move-result v6

    .line 279
    if-eqz v6, :cond_6

    .line 280
    new-instance v3, Lcom/google/android/material/resources/TextAppearance;

    .line 282
    invoke-direct {v3, v5, v6}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 284
    :cond_6
    if-eqz v3, :cond_7

    .line 287
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 289
    move-result v5

    .line 292
    if-eqz v5, :cond_7

    .line 293
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 295
    invoke-static {v5, v2, p1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 297
    move-result-object v5

    .line 300
    iput-object v5, v3, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 301
    :cond_7
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 303
    iget-object v6, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 305
    invoke-virtual {v5, v3, v6}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 307
    iget-object v3, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 310
    const-class v5, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 312
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 314
    move-result-object v5

    .line 317
    const v6, 0x7f0401ae    # @attr/colorOnBackground

    .line 318
    invoke-static {v3, v5, v6}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 321
    move-result-object v5

    .line 324
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 325
    if-eqz v6, :cond_8

    .line 327
    sget-object v5, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 329
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 331
    move-result v3

    .line 334
    goto :goto_2

    .line 335
    :cond_8
    iget v3, v5, Landroid/util/TypedValue;->data:I

    .line 336
    :goto_2
    iget-object v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 338
    const-class v6, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 340
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 342
    move-result-object v6

    .line 345
    const v7, 0x1010031    # @android:attr/colorBackground

    .line 346
    invoke-static {v5, v6, v7}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 349
    move-result-object v6

    .line 352
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    .line 353
    if-eqz v7, :cond_9

    .line 355
    sget-object v6, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 357
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    .line 359
    move-result v5

    .line 362
    goto :goto_3

    .line 363
    :cond_9
    iget v5, v6, Landroid/util/TypedValue;->data:I

    .line 364
    :goto_3
    const/16 v6, 0xe5

    .line 366
    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 368
    move-result v5

    .line 371
    const/16 v6, 0x99

    .line 372
    invoke-static {v3, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 374
    move-result v3

    .line 377
    invoke-static {v3, v5}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 378
    move-result v3

    .line 381
    const/4 v5, 0x7

    .line 382
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 383
    move-result v3

    .line 386
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 387
    move-result-object v3

    .line 390
    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 391
    iget-object v3, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 394
    const-class v5, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 396
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 398
    move-result-object v5

    .line 401
    const v6, 0x7f0401c6    # @attr/colorSurface

    .line 402
    invoke-static {v3, v5, v6}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 405
    move-result-object v5

    .line 408
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 409
    if-eqz v6, :cond_a

    .line 411
    sget-object v5, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 413
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 415
    move-result v3

    .line 418
    goto :goto_4

    .line 419
    :cond_a
    iget v3, v5, Landroid/util/TypedValue;->data:I

    .line 420
    :goto_4
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 422
    move-result-object v3

    .line 425
    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 426
    const/4 v3, 0x2

    .line 429
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 430
    move-result v5

    .line 433
    iput v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 434
    const/4 v5, 0x4

    .line 436
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 437
    move-result v5

    .line 440
    iput v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 441
    const/4 v5, 0x5

    .line 443
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 444
    move-result v5

    .line 447
    iput v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 448
    const/4 v5, 0x3

    .line 450
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 451
    move-result v5

    .line 454
    iput v5, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 455
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 460
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 463
    check-cast v1, Ljava/util/ArrayList;

    .line 465
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 470
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 472
    move-result v1

    .line 475
    if-eqz v1, :cond_4

    .line 476
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 478
    move-result-object v1

    .line 481
    if-nez v1, :cond_b

    .line 482
    goto/16 :goto_1

    .line 484
    :cond_b
    new-array v2, v3, [I

    .line 486
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 488
    aget v2, v2, v0

    .line 491
    iput v2, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 493
    iget-object v2, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 495
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 497
    iget-object v2, v4, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Lcom/google/android/material/tooltip/TooltipDrawable$1;

    .line 500
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 502
    goto/16 :goto_1

    .line 505
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 507
    check-cast v1, Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 511
    move-result v1

    .line 514
    if-ne v1, p1, :cond_d

    .line 515
    move p1, v0

    .line 517
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 518
    check-cast v0, Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 522
    move-result-object v0

    .line 525
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    move-result v1

    .line 529
    if-eqz v1, :cond_e

    .line 530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    move-result-object v1

    .line 535
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 536
    int-to-float v2, p1

    .line 538
    iget-object v4, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 539
    iput v2, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 541
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 543
    goto :goto_5

    .line 546
    :cond_e
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 547
    check-cast p1, Ljava/util/ArrayList;

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 551
    move-result-object p1

    .line 554
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    move-result v0

    .line 558
    if-eqz v0, :cond_10

    .line 559
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    move-result-object v0

    .line 564
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 570
    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    move-result v1

    .line 577
    if-nez v1, :cond_f

    .line 578
    goto :goto_6

    .line 580
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 581
    move-result-object p0

    .line 584
    check-cast p0, Ljava/lang/Float;

    .line 585
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 587
    throw v3

    .line 590
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 591
    return-void

    .line 594
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 595
    const-string p1, "At least one value must be set"

    .line 597
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    throw p0
    .line 602
.end method

.method public final shouldDrawCompatHalo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 9
    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    .line 10
    if-nez p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final snapThumbToValue(FI)Z
    .locals 4

    .line 1
    iput p2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 15
    sub-float v0, p1, v0

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result v0

    .line 21
    float-to-double v0, v0

    .line 22
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 23
    cmpg-double v0, v0, v2

    .line 28
    if-gez v0, :cond_0

    .line 30
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    .line 34
    move-result v0

    .line 37
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 38
    if-nez v1, :cond_2

    .line 40
    const/4 v1, 0x0

    .line 42
    cmpl-float v2, v0, v1

    .line 43
    if-nez v2, :cond_1

    .line 45
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 49
    int-to-float v1, v1

    .line 51
    sub-float/2addr v0, v1

    .line 52
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 53
    int-to-float v1, v1

    .line 55
    div-float/2addr v0, v1

    .line 56
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 57
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 59
    invoke-static {v1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 61
    move-result v0

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 65
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    neg-float v0, v0

    .line 71
    :cond_3
    add-int/lit8 v1, p2, 0x1

    .line 72
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v2

    .line 79
    if-lt v1, v2, :cond_4

    .line 80
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 82
    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Float;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 93
    move-result v1

    .line 96
    sub-float/2addr v1, v0

    .line 97
    :goto_1
    add-int/lit8 v2, p2, -0x1

    .line 98
    if-gez v2, :cond_5

    .line 100
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 102
    goto :goto_2

    .line 104
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Float;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 113
    move-result v2

    .line 116
    add-float/2addr v0, v2

    .line 117
    :goto_2
    cmpg-float v2, p1, v0

    .line 118
    if-gez v2, :cond_6

    .line 120
    move p1, v0

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    cmpl-float v0, p1, v1

    .line 124
    if-lez v0, :cond_7

    .line 126
    move p1, v1

    .line 128
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 129
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    move-result-object p1

    .line 134
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 138
    check-cast p1, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v0

    .line 149
    if-nez v0, :cond_a

    .line 150
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 152
    if-eqz p1, :cond_9

    .line 154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 156
    move-result p1

    .line 159
    if-eqz p1, :cond_9

    .line 160
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 162
    if-nez p1, :cond_8

    .line 164
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 166
    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    .line 168
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 171
    goto :goto_4

    .line 173
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    :goto_4
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    .line 177
    iput p2, p1, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->virtualViewId:I

    .line 179
    const-wide/16 v0, 0xc8

    .line 181
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_9
    const/4 p0, 0x1

    .line 186
    return p0

    .line 187
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object p1

    .line 191
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 192
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object p0

    .line 200
    check-cast p0, Ljava/lang/Float;

    .line 201
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 203
    const/4 p0, 0x0

    .line 206
    throw p0
    .line 207
.end method

.method public final snapTouchPosition()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 4
    const/4 v2, 0x0

    .line 6
    cmpl-float v2, v1, v2

    .line 7
    if-lez v2, :cond_0

    .line 9
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 11
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 13
    sub-float/2addr v2, v3

    .line 15
    div-float/2addr v2, v1

    .line 16
    float-to-int v1, v2

    .line 17
    int-to-float v2, v1

    .line 18
    mul-float/2addr v0, v2

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    move-result v0

    .line 23
    int-to-double v2, v0

    .line 24
    int-to-double v0, v1

    .line 25
    div-double/2addr v2, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    float-to-double v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 35
    sub-double v2, v0, v2

    .line 37
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 39
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 41
    sub-float/2addr v0, v1

    .line 43
    float-to-double v4, v0

    .line 44
    mul-double/2addr v2, v4

    .line 45
    float-to-double v0, v1

    .line 46
    add-double/2addr v2, v0

    .line 47
    double-to-float v0, v2

    .line 48
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(FI)Z

    .line 51
    return-void
    .line 54
.end method

.method public final updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 18
    move-result p1

    .line 21
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 22
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    .line 28
    move-result p1

    .line 31
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 32
    sub-int v1, v0, p0

    .line 34
    sub-int v2, p1, p0

    .line 36
    add-int/2addr v0, p0

    .line 38
    add-int/2addr p1, p0

    .line 39
    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    return-void
    .line 43
.end method

.method public final updateHaloHotspot()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 22
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Float;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    .line 36
    move-result v1

    .line 39
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 40
    int-to-float v2, v2

    .line 42
    mul-float/2addr v1, v2

    .line 43
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 44
    int-to-float v2, v2

    .line 46
    add-float/2addr v1, v2

    .line 47
    float-to-int v1, v1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    .line 49
    move-result v2

    .line 52
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 53
    sub-int v3, v1, p0

    .line 55
    sub-int v4, v2, p0

    .line 57
    add-int/2addr v1, p0

    .line 59
    add-int/2addr v2, p0

    .line 60
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 61
    :cond_0
    return-void
    .line 64
.end method

.method public final updateWidgetLayout()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 11
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v2

    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v1

    .line 26
    add-int/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->minWidgetHeight:I

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 33
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 37
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 38
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    move v0, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 46
    move v0, v3

    .line 48
    :goto_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 49
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    .line 51
    sub-int/2addr v1, v4

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v1

    .line 57
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 58
    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->defaultTrackHeight:I

    .line 60
    sub-int/2addr v4, v5

    .line 62
    div-int/lit8 v4, v4, 0x2

    .line 63
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v4

    .line 68
    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    .line 69
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v1

    .line 74
    add-int/2addr v1, v5

    .line 75
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 76
    if-ne v4, v1, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 81
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 83
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 85
    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 91
    move-result v1

    .line 94
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 95
    mul-int/lit8 v4, v4, 0x2

    .line 97
    sub-int/2addr v1, v4

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 100
    move-result v1

    .line 103
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 106
    :cond_2
    move v2, v3

    .line 109
    :goto_1
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 112
    goto :goto_2

    .line 115
    :cond_3
    if-eqz v2, :cond_4

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 118
    :cond_4
    :goto_2
    return-void
    .line 121
.end method

.method public final validateConfigurationIfDirty()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 2
    if-eqz v0, :cond_10

    .line 4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 6
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 8
    cmpl-float v2, v0, v1

    .line 10
    if-gez v2, :cond_f

    .line 12
    cmpg-float v2, v1, v0

    .line 14
    if-lez v2, :cond_e

    .line 16
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 18
    const/4 v3, 0x0

    .line 20
    cmpl-float v2, v2, v3

    .line 21
    if-lez v2, :cond_1

    .line 23
    sub-float/2addr v1, v0

    .line 25
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v1

    .line 40
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    move-result-object v2

    .line 46
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 47
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    move-result-object p0

    .line 52
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 57
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v0

    .line 72
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Float;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 85
    move-result v2

    .line 88
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 89
    cmpg-float v2, v2, v4

    .line 91
    if-ltz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 95
    move-result v2

    .line 98
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 99
    cmpl-float v2, v2, v4

    .line 101
    if-gtz v2, :cond_4

    .line 103
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 105
    cmpl-float v2, v2, v3

    .line 107
    if-lez v2, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 111
    move-result v2

    .line 114
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 115
    sub-float/2addr v2, v4

    .line 117
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    .line 118
    move-result v2

    .line 121
    if-eqz v2, :cond_3

    .line 122
    goto :goto_1

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 127
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v2

    .line 132
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 133
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 135
    move-result-object v3

    .line 138
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 139
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 141
    move-result-object p0

    .line 144
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 148
    const-string v1, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    .line 149
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 154
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0

    .line 158
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 161
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    move-result-object v2

    .line 166
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 167
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    move-result-object p0

    .line 172
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 173
    move-result-object p0

    .line 176
    const-string v1, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    .line 177
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    move-result-object p0

    .line 182
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    throw v0

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    .line 187
    move-result v0

    .line 190
    cmpg-float v1, v0, v3

    .line 191
    if-ltz v1, :cond_d

    .line 193
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 195
    cmpl-float v2, v1, v3

    .line 197
    if-lez v2, :cond_8

    .line 199
    cmpl-float v2, v0, v3

    .line 201
    if-lez v2, :cond_8

    .line 203
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 205
    const/4 v4, 0x1

    .line 207
    if-ne v2, v4, :cond_7

    .line 208
    cmpg-float v1, v0, v1

    .line 210
    if-ltz v1, :cond_6

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    .line 214
    move-result v1

    .line 217
    if-eqz v1, :cond_6

    .line 218
    goto :goto_2

    .line 220
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 221
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    move-result-object v0

    .line 226
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 227
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 229
    move-result-object v2

    .line 232
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 233
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    move-result-object p0

    .line 238
    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    .line 239
    move-result-object p0

    .line 242
    const-string v0, "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

    .line 243
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    move-result-object p0

    .line 248
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 249
    throw v1

    .line 252
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 253
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    move-result-object v0

    .line 258
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 259
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 261
    move-result-object p0

    .line 264
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 265
    move-result-object p0

    .line 268
    const-string v0, "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

    .line 269
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    move-result-object p0

    .line 274
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 275
    throw v1

    .line 278
    :cond_8
    :goto_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 279
    cmpl-float v1, v0, v3

    .line 281
    if-nez v1, :cond_9

    .line 283
    goto :goto_3

    .line 285
    :cond_9
    float-to-int v1, v0

    .line 286
    int-to-float v1, v1

    .line 287
    cmpl-float v1, v1, v0

    .line 288
    const-string v2, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    .line 290
    const-string v3, "BaseSlider"

    .line 292
    if-eqz v1, :cond_a

    .line 294
    const-string/jumbo v1, "stepSize"

    .line 296
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 299
    move-result-object v0

    .line 302
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 303
    move-result-object v0

    .line 306
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 310
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_a
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 314
    float-to-int v1, v0

    .line 316
    int-to-float v1, v1

    .line 317
    cmpl-float v1, v1, v0

    .line 318
    if-eqz v1, :cond_b

    .line 320
    const-string/jumbo v1, "valueFrom"

    .line 322
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 325
    move-result-object v0

    .line 328
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 329
    move-result-object v0

    .line 332
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    move-result-object v0

    .line 336
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_b
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 340
    float-to-int v1, v0

    .line 342
    int-to-float v1, v1

    .line 343
    cmpl-float v1, v1, v0

    .line 344
    if-eqz v1, :cond_c

    .line 346
    const-string/jumbo v1, "valueTo"

    .line 348
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    move-result-object v0

    .line 354
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 355
    move-result-object v0

    .line 358
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    move-result-object v0

    .line 362
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_c
    :goto_3
    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 367
    goto :goto_4

    .line 369
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 370
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    move-result-object v0

    .line 375
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 376
    move-result-object v0

    .line 379
    const-string v1, "minSeparation(%s) must be greater or equal to 0"

    .line 380
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 385
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 386
    throw p0

    .line 389
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 390
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 392
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 394
    move-result-object v1

    .line 397
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 398
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 400
    move-result-object p0

    .line 403
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 404
    move-result-object p0

    .line 407
    const-string/jumbo v1, "valueTo(%s) must be greater than valueFrom(%s)"

    .line 408
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 411
    move-result-object p0

    .line 414
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 415
    throw v0

    .line 418
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 419
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 421
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 423
    move-result-object v1

    .line 426
    iget p0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 427
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 429
    move-result-object p0

    .line 432
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 433
    move-result-object p0

    .line 436
    const-string/jumbo v1, "valueFrom(%s) must be smaller than valueTo(%s)"

    .line 437
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 440
    move-result-object p0

    .line 443
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 444
    throw v0

    .line 447
    :cond_10
    :goto_4
    return-void
    .line 448
.end method
