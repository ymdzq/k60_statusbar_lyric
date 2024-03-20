.class public Lmiuix/androidbasewidget/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDefaultForegroundPrimaryColor:I

.field public final mDefaultForegroundPrimaryDisableColor:I

.field public final mDisabledProgressAlpha:F

.field public mDraggableMaxPercentProcess:F

.field public mDraggableMinPercentProgress:F

.field public mForegroundPrimaryColor:I

.field public mForegroundPrimaryDisableColor:I

.field public mHasEdgeReached:Z

.field public final mIStateStyle:Lmiuix/animation/IStateStyle;

.field public mIconPrimaryColor:I

.field public final mIconTransparent:I

.field public final mMaxMiddle:F

.field public mMiddleEnabled:Z

.field public final mMinMiddle:F

.field public mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public mProgess:I

.field public mProgressColorStateList:Landroid/content/res/ColorStateList;

.field public final mTrainsOnSeekBarChangeListener:Lmiuix/androidbasewidget/widget/SeekBar$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04068a    # @attr/seekBarStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/androidbasewidget/widget/SeekBar$1;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Lmiuix/androidbasewidget/widget/SeekBar$1;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 6
    sget-object v2, Lmiuix/androidbasewidget/R$styleable;->SeekBar:[I

    const v3, 0x7f14086d    # @style/Widget.SeekBar.DayNight

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0605aa    # @color/miuix_appcompat_progress_primary_colors_light 'res/color/miuix_appcompat_progress_primary_colors_light.xml'

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0605a6    # @color/miuix_appcompat_progress_disable_color_light '#d9d9d9'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0605a3    # @color/miuix_appcompat_progress_background_icon_light '#26082543'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x7

    .line 10
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    const/4 v4, 0x3

    .line 11
    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    const/4 p3, 0x4

    .line 12
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    const/4 p3, 0x5

    .line 13
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 14
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    const/16 v2, 0x8

    const v3, 0x3eeb851f    # 0.46f

    .line 15
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    const/4 v4, 0x6

    const v5, 0x3f0a3d71    # 0.54f

    .line 16
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    const/4 v7, 0x2

    .line 17
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 18
    iget v10, v7, Landroid/util/TypedValue;->type:I

    if-ne v10, v4, :cond_0

    .line 19
    invoke-virtual {v7, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v9

    .line 20
    :goto_0
    iput v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    const/4 v7, 0x1

    .line 21
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 22
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-ne v11, v4, :cond_1

    .line 23
    invoke-virtual {v10, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v8

    .line 24
    :goto_1
    iput v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 25
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    invoke-virtual {p0, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMinPercentProgress(F)V

    .line 26
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    invoke-virtual {p0, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMaxPercentProcess(F)V

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0605ef    # @color/miuix_appcompat_transparent '#00000000'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    cmpl-float p1, v2, p3

    if-gtz p1, :cond_2

    cmpg-float p1, v2, v9

    if-gez p1, :cond_3

    .line 29
    :cond_2
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    :cond_3
    cmpg-float p1, v6, p3

    if-ltz p1, :cond_4

    cmpl-float p1, v6, v8

    if-lez p1, :cond_5

    .line 30
    :cond_4
    iput v5, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p2

    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-lez p1, :cond_6

    .line 33
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    int-to-float v2, p1

    div-float v9, p2, v2

    .line 34
    :cond_6
    iget p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p2, v9, p2

    if-lez p2, :cond_7

    iget p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p2, v9, p2

    if-gez p2, :cond_7

    goto :goto_2

    :cond_7
    move v7, v1

    .line 35
    :goto_2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    if-eqz v7, :cond_8

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 38
    :cond_8
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 39
    iget p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "targe"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 40
    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 41
    new-instance p1, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 42
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

.method public static synthetic access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private getMinWrapper()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/SeekBar;->getMin()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private declared-synchronized getRange()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 3
    move-result v0

    .line 6
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sub-int/2addr v0, v1

    .line 11
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
    .line 16
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    const/16 p0, 0xff

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    .line 23
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    .line 25
    mul-float/2addr p0, v1

    .line 27
    float-to-int p0, p0

    .line 28
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public declared-synchronized getDraggableMaxPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
    .line 9
.end method

.method public declared-synchronized getDraggableMinPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
    .line 9
.end method

.method public final declared-synchronized getProgressForm(F)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getRange()I

    .line 3
    move-result v0

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    add-int/2addr p1, v0

    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
    .line 19
.end method

.method public declared-synchronized setDraggableMaxPercentProcess(F)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    float-to-double v0, p1

    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4
    cmpl-double v0, v0, v2

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    if-lez v0, :cond_0

    .line 10
    :try_start_0
    const-string p1, "SeekBar"

    .line 12
    const-string v0, "The draggableMaxPercentProcess value should not be higher than the max value, reset to 1.0"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    move p1, v1

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    cmpg-float v0, p1, v0

    .line 24
    if-gez v0, :cond_1

    .line 26
    const-string p1, "SeekBar"

    .line 28
    const-string v0, "The draggableMaxPercentProcess value should not be lower than the min value, reset to 1.0"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 36
    cmpg-float v0, p1, v0

    .line 38
    if-gez v0, :cond_2

    .line 40
    const-string p1, "SeekBar"

    .line 42
    const-string v0, "The draggableMaxPercentProcess value should not be lower than draggableMinPercentProcess value, reset to 1.0"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_2

    .line 49
    :cond_2
    move v1, p1

    .line 50
    :goto_2
    iput v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 51
    invoke-virtual {p0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 57
    move-result v0

    .line 60
    if-le v0, p1, :cond_3

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_3
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_3
    monitor-exit p0

    .line 68
    throw p1
    .line 69
.end method

.method public declared-synchronized setDraggableMinPercentProgress(F)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    float-to-double v0, p1

    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4
    cmpl-double v2, v0, v2

    .line 6
    const/4 v3, 0x0

    .line 8
    if-lez v2, :cond_0

    .line 9
    :try_start_0
    const-string p1, "SeekBar"

    .line 11
    const-string v0, "The draggableMinPercentProgress value should not be higher than 1.0, reset to 0.0"

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    move p1, v3

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_3

    .line 21
    :cond_0
    const-wide/16 v4, 0x0

    .line 22
    cmpg-double v0, v0, v4

    .line 24
    if-gez v0, :cond_1

    .line 26
    const-string p1, "SeekBar"

    .line 28
    const-string v0, "The draggableMinPercentProgress value should not be lower than 0.0, reset to 0.0"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 36
    cmpl-float v0, p1, v0

    .line 38
    if-lez v0, :cond_2

    .line 40
    const-string p1, "SeekBar"

    .line 42
    const-string v0, "The draggableMinPercentProgress value should not be higher than draggableMaxPercentProcess value, reset to 0.0"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_2

    .line 49
    :cond_2
    move v3, p1

    .line 50
    :goto_2
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 51
    invoke-virtual {p0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 57
    move-result v0

    .line 60
    if-ge v0, p1, :cond_3

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_3
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_3
    monitor-exit p0

    .line 68
    throw p1
    .line 69
.end method

.method public setForegroundPrimaryColor(II)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 2
    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 4
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 6
    return-void
    .line 9
.end method

.method public setIconPrimaryColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 4
    return-void
    .line 7
.end method

.method public setMiddleEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 6
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Lmiuix/androidbasewidget/widget/SeekBar$1;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 10
    :goto_0
    return-void
    .line 12
.end method

.method public final updatePrimaryColor()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 6
    if-eqz v1, :cond_4

    .line 8
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 10
    const v1, 0x102000d    # @android:id/progress

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    instance-of v2, v1, Landroid/graphics/drawable/ClipDrawable;

    .line 21
    if-eqz v2, :cond_2

    .line 23
    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    .line 25
    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 33
    if-eqz v2, :cond_2

    .line 35
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 39
    move-result-object v2

    .line 42
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 43
    if-nez v3, :cond_0

    .line 45
    if-eqz v2, :cond_0

    .line 47
    iput-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 49
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 51
    if-eqz v2, :cond_2

    .line 53
    const v3, -0x101009e

    .line 55
    filled-new-array {v3}, [I

    .line 58
    move-result-object v4

    .line 61
    iget v5, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 62
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 64
    move-result v2

    .line 67
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 68
    if-ne v2, v4, :cond_1

    .line 70
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 72
    sget-object v4, Landroid/widget/SeekBar;->ENABLED_STATE_SET:[I

    .line 74
    iget v5, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 76
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 78
    move-result v2

    .line 81
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 82
    if-eq v2, v4, :cond_2

    .line 84
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v1

    .line 89
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 90
    iget v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 92
    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 94
    filled-new-array {v2, v4}, [I

    .line 96
    move-result-object v2

    .line 99
    filled-new-array {v3}, [I

    .line 100
    move-result-object v3

    .line 103
    const/4 v4, 0x0

    .line 104
    new-array v4, v4, [I

    .line 105
    filled-new-array {v3, v4}, [[I

    .line 107
    move-result-object v3

    .line 110
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 111
    invoke-direct {v4, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 113
    iput-object v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 116
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 118
    :cond_2
    const v1, 0x1020006    # @android:id/icon

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 124
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 130
    if-eqz v1, :cond_4

    .line 132
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 134
    if-eqz v1, :cond_3

    .line 136
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    .line 141
    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 143
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    :cond_4
    return-void
    .line 148
.end method
