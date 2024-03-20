.class public Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;
.super Lmiuix/androidbasewidget/widget/SeekBar;
.source "MiuiHapticInfinitySeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;
    }
.end annotation


# instance fields
.field private mBigPointCenterColor:I

.field private mBigPointColor:I

.field private mBigPointsRadius:F

.field private mLastLevel:F

.field private mListener:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointsRadius:F

.field private mPointsX:F

.field private mPointsY:F

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSmallPointColor:I

.field private mUserMoveFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mLastLevel:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mListener:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserMoveFlag(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mLastLevel:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPointsX(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPointX(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->getPointX()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprogressToLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->progressToLevel(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetHapticLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;Landroid/content/Context;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->setHapticLevel(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    iput v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mLastLevel:F

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 217
    new-instance v1, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;-><init>(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)V

    iput-object v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    iput v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mLastLevel:F

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 217
    new-instance v1, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;-><init>(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)V

    iput-object v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    iput v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mLastLevel:F

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 217
    new-instance v0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;-><init>(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getCurrentProgress(Landroid/content/Context;)I
    .locals 1

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_infinite_progress"

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPointX()F
    .locals 4

    .line 157
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->getCurrentProgress(Landroid/content/Context;)I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointsRadius:F

    .line 161
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointsRadius:F

    sub-float/2addr v2, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    .line 168
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 173
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float v1, p0, v1

    :cond_4
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->font_size_seekbar_big_pointer_blue:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointColor:I

    .line 64
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->font_weight_view_small_color:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSmallPointColor:I

    .line 65
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->font_size_view_big_center_color:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointCenterColor:I

    .line 66
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->font_size_view_small_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsRadius:F

    .line 67
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->font_size_view_big_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointsRadius:F

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 70
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object p2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-nez p2, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->getCurrentProgress(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private progressToLevel(I)F
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->toFloaWith2Bit(F)F

    move-result p0

    return p0
.end method

.method private setHapticLevel(Landroid/content/Context;F)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_infinite_intensity"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method private setPointX(F)I
    .locals 4

    .line 187
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 189
    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointsRadius:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 192
    iput v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    sub-float v3, v2, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    sub-float/2addr v2, v1

    .line 196
    iput v2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    const/16 p1, 0x64

    goto :goto_0

    .line 198
    :cond_1
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41e80000    # 29.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 203
    iput v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    const/16 p1, 0x32

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 207
    iput p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    move p1, v0

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_3

    rsub-int/lit8 p1, p1, 0x64

    :cond_3
    return p1
.end method

.method private toFloaWith2Bit(F)F
    .locals 0

    .line 0
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public getFontWeightChangeListener()Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mListener:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->getCurrentProgress(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mSmallPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsY:F

    iget v2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsRadius:F

    iget-object v3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsY:F

    iget v2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointsRadius:F

    iget-object v3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mBigPointCenterColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    iget v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsY:F

    iget v2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsRadius:F

    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->getPointX()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsX:F

    .line 86
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mPointsY:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v2

    .line 118
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->setPointX(F)I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 123
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->setPointX(F)I

    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 128
    invoke-static {p0, v1}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 114
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mUserMoveFlag:Z

    .line 115
    invoke-static {p0, v2}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    :goto_0
    return v1
.end method

.method public setFontWeightChangeListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->mListener:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    return-void
.end method
