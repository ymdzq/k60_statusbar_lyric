.class public Lmiuix/androidbasewidget/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
    }
.end annotation


# instance fields
.field private mDefaultForegroundPrimaryColor:I

.field private mDefaultForegroundPrimaryDisableColor:I

.field private mDefaultIconPrimaryColor:I

.field private mDisabledProgressAlpha:F

.field private mDraggableMaxPercentProcess:F

.field private mDraggableMinPercentProgress:F

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I

.field private mHasEdgeReached:Z

.field private mIStateStyle:Lmiuix/animation/IStateStyle;

.field private mIconPrimaryColor:I

.field private mIconTransparent:I

.field private mIsInMiddle:Z

.field private mMaxMiddle:F

.field private mMiddleEnabled:Z

.field private mMinMiddle:F

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgess:I

.field private mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private final mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    sget v0, Lmiuix/androidbasewidget/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 309
    new-instance v0, Lmiuix/androidbasewidget/widget/SeekBar$1;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 79
    sget-object v2, Lmiuix/androidbasewidget/R$styleable;->SeekBar:[I

    sget v3, Lmiuix/androidbasewidget/R$style;->Widget_SeekBar_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_primary_colors_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_disable_color_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_background_icon_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    .line 85
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_middleEnabled:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 86
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 87
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryDisableColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 88
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_iconPrimaryColor:I

    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 89
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_disabledProgressAlpha:I

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    .line 90
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_minMiddle:I

    const v3, 0x3eeb851f    # 0.46f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 91
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_maxMiddle:I

    const v4, 0x3f0a3d71    # 0.54f

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 92
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMinPercentProgress:I

    const/4 v5, 0x0

    invoke-direct {p0, p2, p3, v5}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 93
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMaxPercentProgress:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3, v6}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 94
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMinPercentProgress(F)V

    .line 95
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMaxPercentProcess(F)V

    .line 96
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    .line 98
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p2, p1, v2

    if-gtz p2, :cond_0

    cmpg-float p1, p1, v5

    if-gez p1, :cond_1

    .line 99
    :cond_0
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 101
    :cond_1
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p2, p1, v2

    if-ltz p2, :cond_2

    cmpl-float p1, p1, v6

    if-lez p1, :cond_3

    .line 102
    :cond_2
    iput v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p2

    sub-int/2addr p1, p2

    .line 106
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->isInMiddle(II)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    .line 107
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 108
    iget-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    if-eqz p2, :cond_4

    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    :cond_4
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 113
    iget p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "progress"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 114
    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    new-instance p1, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 118
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    return p0
.end method

.method static synthetic access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    return p0
.end method

.method static synthetic access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    .line 44
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p0
.end method

.method static synthetic access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I
    .locals 0

    .line 44
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p1
.end method

.method static synthetic access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 44
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    return p0
.end method

.method static synthetic access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    return p0
.end method

.method static synthetic access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    return p0
.end method

.method static synthetic access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    return p1
.end method

.method private getMinWrapper()I
    .locals 0

    .line 295
    invoke-super {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p0

    return p0
.end method

.method private declared-synchronized getProgressForm(F)I
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getRange()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getRange()I
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F
    .locals 0

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method private isInMiddle(II)Z
    .locals 1

    if-lez p1, :cond_0

    .line 302
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 303
    :goto_0
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updatePrimaryColor()V
    .locals 6

    .line 243
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    .line 245
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d    # @android:id/progress

    .line 246
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 247
    instance-of v2, v1, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_2

    .line 249
    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    .line 251
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 254
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 257
    iput-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 259
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    const v3, -0x101009e

    filled-new-array {v3}, [I

    move-result-object v4

    iget v5, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 260
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/widget/SeekBar;->ENABLED_STATE_SET:[I

    iget v5, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 261
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    if-eq v2, v4, :cond_2

    .line 262
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 263
    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    filled-new-array {v2, v4}, [I

    move-result-object v2

    .line 265
    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    .line 266
    filled-new-array {v3, v4}, [[I

    move-result-object v3

    .line 267
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 268
    iput-object v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 269
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const v1, 0x1020006    # @android:id/icon

    .line 275
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    .line 277
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eqz v1, :cond_3

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    goto :goto_0

    :cond_3
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 285
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    .line 286
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 287
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    mul-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getDraggableMaxPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDraggableMinPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraggableMaxPercentProcess(F)V
    .locals 4

    monitor-enter p0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    :try_start_0
    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be higher than the max value, reset to 1.0"

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be lower than the min value, reset to 1.0"

    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be lower than draggableMinPercentProcess value, reset to 1.0"

    .line 206
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, p1

    .line 208
    :goto_2
    iput v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 210
    invoke-direct {p0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p1

    .line 211
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDraggableMinPercentProgress(F)V
    .locals 6

    monitor-enter p0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    :try_start_0
    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be higher than 1.0, reset to 0.0"

    .line 171
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be lower than 0.0, reset to 0.0"

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be higher than draggableMaxPercentProcess value, reset to 0.0"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v3, p1

    .line 181
    :goto_2
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 183
    invoke-direct {p0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p1

    .line 184
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public setForegroundPrimaryColor(II)V
    .locals 0

    .line 232
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 233
    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 234
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setIconPrimaryColor(I)V
    .locals 0

    .line 238
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 239
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setMiddleEnabled(Z)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 226
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 227
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-ne p1, v0, :cond_0

    .line 218
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 220
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    return-void
.end method
