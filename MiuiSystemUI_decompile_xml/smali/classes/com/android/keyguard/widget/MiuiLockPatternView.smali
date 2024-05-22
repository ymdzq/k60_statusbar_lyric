.class public Lcom/android/keyguard/widget/MiuiLockPatternView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimatingPeriodStart:J

.field public final mAspect:I

.field public final mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

.field public final mCurrentPath:Landroid/graphics/Path;

.field public final mDotActivatedColor:I

.field public final mDotColor:I

.field public final mDotHitFactor:F

.field public mDotHitRadius:F

.field public mDotSize:I

.field public final mDotSizeActivated:I

.field public mErrorColor:I

.field public final mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

.field public final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mInProgressX:F

.field public mInProgressY:F

.field public mInStealthMode:Z

.field public mInputEnabled:Z

.field public final mInvalidate:Landroid/graphics/Rect;

.field public final mLineFadeOutAnimationDelayMs:I

.field public final mLineFadeOutAnimationDurationMs:I

.field public final mLineFadeStart:[J

.field public final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public final mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field public mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPathPaint:Landroid/graphics/Paint;

.field public final mPathWidth:I

.field public final mPattern:Ljava/util/ArrayList;

.field public mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

.field public final mPatternDrawLookup:[[Z

.field public mPatternInProgress:Z

.field public mRegularColor:I

.field public final mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field public mSquareHeight:F

.field public mSquareWidth:F

.field public mSuccessColor:I

.field public final mTmpInvalidateRect:Landroid/graphics/Rect;

.field public final mUseLockPatternDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v4, 0x3

    .line 6
    filled-new-array {v4, v4}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    iput-object v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v6, -0x40800000    # -1.0f

    .line 7
    iput v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 8
    iput v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    new-array v5, v5, [J

    .line 9
    iput-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeStart:[J

    .line 10
    sget-object v5, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    iput-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    const/4 v6, 0x0

    .line 12
    iput-boolean v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 13
    iput-boolean v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 14
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 15
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 16
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 17
    sget-object v7, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v8, 0x1120084    # @android:^attr-private/magnifierColorOverlay

    const v9, 0x10304c7    # @android:style/Widget.LockPatternView

    move-object/from16 v10, p2

    invoke-virtual {v1, v10, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "square"

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_0

    .line 20
    iput v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v9, "lock_width"

    .line 21
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 22
    iput v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v9, "lock_height"

    .line 23
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 24
    iput v10, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_0

    .line 25
    :cond_2
    iput v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAspect:I

    .line 26
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 27
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0603bf    # @color/miui_pattern_lockscreen_paint_color '#ffffff'

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mRegularColor:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060774    # @color/pattern_lockscreen_paint_error_color '#de462d'

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mErrorColor:I

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0603be    # @color/miui_pattern_lockscreen_heavy_paint_color '#ffffff'

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSuccessColor:I

    .line 32
    iget v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mRegularColor:I

    iput v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotColor:I

    .line 33
    iput v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotActivatedColor:I

    .line 34
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 37
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0705ee    # @dimen/lock_pattern_dot_line_width '3.11dp'

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathWidth:I

    int-to-float v9, v9

    .line 39
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10e0169

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10e0168

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0705ef    # @dimen/lock_pattern_dot_size '8.0dp'

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0705f0    # @dimen/lock_pattern_dot_size_activated '12.0dp'

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSizeActivated:I

    .line 44
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10501d9    # @android:dimen/messaging_image_max_height

    invoke-virtual {v9, v11, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 46
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v9, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotHitFactor:F

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110266

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x108064d    # @android:drawable/numberpicker_down_disabled

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x108064b    # @android:drawable/number_picker_divider_material

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    :cond_3
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 52
    filled-new-array {v4, v4}, [I

    move-result-object v2

    const-class v3, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    iput-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    move v2, v6

    :goto_1
    if-ge v2, v4, :cond_5

    move v3, v6

    :goto_2
    if-ge v3, v4, :cond_4

    .line 53
    iget-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    aget-object v9, v5, v2

    new-instance v11, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    invoke-direct {v11}, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;-><init>()V

    aput-object v11, v9, v3

    .line 54
    aget-object v5, v5, v2

    aget-object v5, v5, v3

    iget v9, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 55
    iput v2, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->row:I

    .line 56
    iput v3, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->col:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const v2, 0x10c000d    # @android:interpolator/fast_out_slow_in

    .line 57
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000e    # @android:interpolator/linear_out_slow_in

    .line 58
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v1, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v1, v0, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f1    # @dimen/lock_pattern_fade_away_gradient_width '8.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    new-instance v11, Landroid/graphics/LinearGradient;

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    const/4 v13, 0x0

    int-to-float v0, v0

    div-float v14, v0, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v17, v8

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 63
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getDotColor()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotColor:I

    .line 6
    return p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 9
    sget-object v1, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 11
    if-ne v0, v1, :cond_1

    .line 13
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mErrorColor:I

    .line 15
    return p0

    .line 17
    :cond_1
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotColor:I

    .line 18
    return p0
    .line 20
.end method


# virtual methods
.method public final addCellToPattern(Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 2
    iget v1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 4
    aget-object v0, v0, v1

    .line 6
    iget v2, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 8
    const/4 v3, 0x1

    .line 10
    aput-boolean v3, v0, v2

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 18
    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 22
    aget-object p1, p1, v1

    .line 24
    aget-object p1, p1, v2

    .line 26
    iget-object v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 32
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 35
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37
    const/4 v11, 0x2

    .line 40
    new-array v4, v11, [F

    .line 41
    fill-array-data v4, :array_0

    .line 43
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    move-result-object v4

    .line 49
    new-instance v5, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda1;

    .line 50
    invoke-direct {v5, p0}, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;)V

    .line 52
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    iget v5, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 58
    int-to-long v5, v5

    .line 60
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 61
    iget v5, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 64
    int-to-long v5, v5

    .line 66
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 70
    move-result-object v12

    .line 73
    iget v7, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 74
    iget v9, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 78
    move-result v8

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 82
    move-result v10

    .line 85
    new-array v1, v11, [F

    .line 86
    fill-array-data v1, :array_1

    .line 88
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 91
    move-result-object v1

    .line 94
    new-instance v2, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;

    .line 95
    move-object v4, v2

    .line 97
    move-object v5, p0

    .line 98
    move-object v6, p1

    .line 99
    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFF)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    const-wide/16 v4, 0x32

    .line 111
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 116
    move-result-object v1

    .line 119
    iget v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 120
    iget v6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSizeActivated:I

    .line 122
    if-eq v2, v6, :cond_1

    .line 124
    int-to-float v2, v2

    .line 126
    const/high16 v7, 0x40000000    # 2.0f

    .line 127
    div-float/2addr v2, v7

    .line 129
    int-to-float v6, v6

    .line 130
    div-float/2addr v6, v7

    .line 131
    new-instance v7, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;

    .line 132
    const/4 v8, 0x0

    .line 134
    invoke-direct {v7, p0, p1, v8}, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;I)V

    .line 135
    new-array v9, v11, [F

    .line 138
    aput v2, v9, v8

    .line 140
    aput v6, v9, v3

    .line 142
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 144
    move-result-object v9

    .line 147
    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    iget-object v10, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 151
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    const-wide/16 v12, 0x60

    .line 156
    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    new-array v10, v11, [F

    .line 161
    aput v6, v10, v8

    .line 163
    aput v2, v10, v3

    .line 165
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 167
    move-result-object v2

    .line 170
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    iget-object v6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 174
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    const-wide/16 v6, 0xc0

    .line 179
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 184
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 186
    filled-new-array {v9, v2}, [Landroid/animation/Animator;

    .line 189
    move-result-object v2

    .line 192
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 193
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    :cond_1
    iget v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotColor:I

    .line 199
    iget v6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotActivatedColor:I

    .line 201
    if-eq v2, v6, :cond_2

    .line 203
    new-instance v2, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;

    .line 205
    invoke-direct {v2, p0, p1, v3}, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;I)V

    .line 207
    new-array v6, v11, [F

    .line 210
    fill-array-data v6, :array_2

    .line 212
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 215
    move-result-object v6

    .line 218
    new-array v7, v11, [F

    .line 219
    fill-array-data v7, :array_3

    .line 221
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 224
    move-result-object v7

    .line 227
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 234
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 250
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 255
    move-result-object v4

    .line 258
    iget v5, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 259
    iget v7, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 261
    add-int/2addr v5, v7

    .line 263
    add-int/lit8 v5, v5, -0x64

    .line 264
    int-to-long v7, v5

    .line 266
    invoke-virtual {v4, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 267
    move-result-object v4

    .line 270
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 271
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    :cond_2
    new-instance v1, Lcom/android/keyguard/widget/MiuiLockPatternView$2;

    .line 277
    invoke-direct {v1, p0, p1, v3}, Lcom/android/keyguard/widget/MiuiLockPatternView$2;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Ljava/lang/Object;I)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    iput-object v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 285
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

    .line 290
    if-eqz p1, :cond_4

    .line 292
    check-cast p1, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 294
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 296
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 298
    move-result-object v0

    .line 301
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 302
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 305
    move-result-object p1

    .line 308
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 309
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 314
    return-void

    .line 317
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 318
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 326
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 334
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 342
.end method

.method public final clearPatternDrawLookup()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    move v3, v0

    .line 7
    :goto_1
    if-ge v3, v2, :cond_0

    .line 8
    iget-object v4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 10
    aget-object v4, v4, v1

    .line 12
    aput-boolean v0, v4, v3

    .line 14
    iget-object v4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mLineFadeStart:[J

    .line 16
    mul-int/lit8 v5, v3, 0x3

    .line 18
    add-int/2addr v5, v1

    .line 20
    const-wide/16 v6, 0x0

    .line 21
    aput-wide v6, v4, v5

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public final detectAndAddHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->detectCellHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 2
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 9
    iget v1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 11
    aget-object v0, v0, v1

    .line 13
    iget v1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 15
    aget-boolean v0, v0, v1

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, p2

    .line 22
    :goto_0
    if-eqz p1, :cond_a

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_7

    .line 32
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 38
    iget v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 40
    iget v3, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 42
    sub-int/2addr v3, v1

    .line 44
    iget v4, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 45
    iget v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 47
    sub-int/2addr v4, v5

    .line 49
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v6

    .line 53
    const/4 v7, 0x2

    .line 54
    const/4 v8, -0x1

    .line 55
    if-ne v6, v7, :cond_2

    .line 56
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 58
    move-result v6

    .line 61
    if-eq v6, v2, :cond_2

    .line 62
    if-lez v3, :cond_1

    .line 64
    move v1, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v1, v8

    .line 68
    :goto_1
    iget v0, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 69
    add-int/2addr v1, v0

    .line 71
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 72
    move-result v0

    .line 75
    if-ne v0, v7, :cond_4

    .line 76
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 78
    move-result v0

    .line 81
    if-eq v0, v2, :cond_4

    .line 82
    if-lez v4, :cond_3

    .line 84
    move v8, v2

    .line 86
    :cond_3
    add-int/2addr v5, v8

    .line 87
    :cond_4
    if-ltz v1, :cond_6

    .line 88
    if-gt v1, v7, :cond_6

    .line 90
    if-ltz v5, :cond_5

    .line 92
    if-gt v5, v7, :cond_5

    .line 94
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->sCells:[[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 96
    aget-object v0, v0, v1

    .line 98
    aget-object v0, v0, v5

    .line 100
    goto :goto_2

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    const-string p1, "column must be in range 0-2"

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0

    .line 110
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string/jumbo p1, "row must be in range 0-2"

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0

    .line 119
    :cond_7
    move-object v0, p2

    .line 120
    :goto_2
    if-eqz v0, :cond_8

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 123
    iget v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 125
    aget-object v1, v1, v3

    .line 127
    iget v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 129
    aget-boolean v1, v1, v3

    .line 131
    if-nez v1, :cond_8

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;)V

    .line 135
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;)V

    .line 138
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 141
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    move-result-object v1

    .line 146
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 147
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 149
    const/4 v3, 0x6

    .line 151
    invoke-virtual {v1, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportV2HapticFeedback(I)Z

    .line 152
    move-result v1

    .line 155
    if-eqz v1, :cond_9

    .line 156
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    move-result-object p0

    .line 161
    check-cast p0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 162
    check-cast p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    new-instance v0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;

    .line 169
    invoke-direct {v0, p0, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;I)V

    .line 171
    invoke-virtual {p0, p2, v0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 174
    goto :goto_3

    .line 177
    :cond_9
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 178
    :goto_3
    return-object p1

    .line 181
    :cond_a
    return-object p2
    .line 182
.end method

.method public final detectCellHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotHitRadius:F

    .line 2
    mul-float/2addr v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, 0x3

    .line 7
    if-ge v2, v3, :cond_4

    .line 8
    move v4, v1

    .line 10
    :goto_1
    if-ge v4, v3, :cond_3

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 13
    move-result v5

    .line 16
    invoke-virtual {p0, v4}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 17
    move-result v6

    .line 20
    sub-float v6, p1, v6

    .line 21
    mul-float/2addr v6, v6

    .line 23
    sub-float v5, p2, v5

    .line 24
    mul-float/2addr v5, v5

    .line 26
    add-float/2addr v5, v6

    .line 27
    cmpg-float v5, v5, v0

    .line 28
    if-gez v5, :cond_2

    .line 30
    sget-object p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->sCells:[[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 32
    if-ltz v2, :cond_1

    .line 34
    const/4 p0, 0x2

    .line 36
    if-gt v2, p0, :cond_1

    .line 37
    if-ltz v4, :cond_0

    .line 39
    if-gt v4, p0, :cond_0

    .line 41
    sget-object p0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->sCells:[[Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 43
    aget-object p0, p0, v2

    .line 45
    aget-object p0, p0, v4

    .line 47
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string p1, "column must be in range 0-2"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string/jumbo p1, "row must be in range 0-2"

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    const/4 p0, 0x0

    .line 73
    return-object p0
    .line 74
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p0

    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
    .line 13
.end method

.method public getCellStates()[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCenterXForColumn(I)F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2
    int-to-float v0, v0

    .line 4
    int-to-float p1, p1

    .line 5
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 6
    mul-float/2addr p1, p0

    .line 8
    add-float/2addr p1, v0

    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    div-float/2addr p0, v0

    .line 12
    add-float/2addr p0, p1

    .line 13
    return p0
    .line 14
.end method

.method public final getCenterYForRow(I)F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 2
    int-to-float v0, v0

    .line 4
    int-to-float p1, p1

    .line 5
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 6
    mul-float/2addr p1, p0

    .line 8
    add-float/2addr p1, v0

    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    div-float/2addr p0, v0

    .line 12
    add-float/2addr p0, p1

    .line 13
    return p0
    .line 14
.end method

.method public final getCurrentColor(Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 4
    if-nez p1, :cond_4

    .line 6
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 13
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 15
    if-ne p1, v0, :cond_1

    .line 17
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mErrorColor:I

    .line 19
    return p0

    .line 21
    :cond_1
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 22
    if-eq p1, v0, :cond_3

    .line 24
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 26
    if-ne p1, v0, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "unknown display mode "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1

    .line 53
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSuccessColor:I

    .line 54
    return p0

    .line 56
    :cond_4
    :goto_1
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mRegularColor:I

    .line 57
    return p0
    .line 59
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v3

    .line 11
    iget-object v4, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 12
    iget-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 14
    sget-object v6, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 16
    const/4 v8, 0x1

    .line 18
    if-ne v5, v6, :cond_3

    .line 19
    add-int/lit8 v5, v3, 0x1

    .line 21
    mul-int/lit16 v5, v5, 0x2bc

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    move-result-wide v9

    .line 28
    iget-wide v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    .line 29
    sub-long/2addr v9, v11

    .line 31
    long-to-int v9, v9

    .line 32
    rem-int/2addr v9, v5

    .line 33
    div-int/lit16 v5, v9, 0x2bc

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 36
    const/4 v10, 0x0

    .line 39
    :goto_0
    if-ge v10, v5, :cond_0

    .line 40
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v11

    .line 45
    check-cast v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 46
    iget v12, v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 48
    aget-object v12, v4, v12

    .line 50
    iget v11, v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 52
    aput-boolean v8, v12, v11

    .line 54
    add-int/lit8 v10, v10, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    if-lez v5, :cond_1

    .line 59
    if-ge v5, v3, :cond_1

    .line 61
    move v10, v8

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v10, 0x0

    .line 65
    :goto_1
    if-eqz v10, :cond_2

    .line 66
    rem-int/lit16 v9, v9, 0x2bc

    .line 68
    int-to-float v9, v9

    .line 70
    const/high16 v10, 0x442f0000    # 700.0f

    .line 71
    div-float/2addr v9, v10

    .line 73
    add-int/lit8 v10, v5, -0x1

    .line 74
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v10

    .line 79
    check-cast v10, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 80
    iget v11, v10, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 82
    invoke-virtual {v0, v11}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 84
    move-result v11

    .line 87
    iget v10, v10, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 88
    invoke-virtual {v0, v10}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 90
    move-result v10

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 97
    check-cast v5, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 98
    iget v12, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 100
    invoke-virtual {v0, v12}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 102
    move-result v12

    .line 105
    sub-float/2addr v12, v11

    .line 106
    mul-float/2addr v12, v9

    .line 107
    iget v5, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 108
    invoke-virtual {v0, v5}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 110
    move-result v5

    .line 113
    sub-float/2addr v5, v10

    .line 114
    mul-float/2addr v5, v9

    .line 115
    add-float/2addr v11, v12

    .line 116
    iput v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 117
    add-float/2addr v10, v5

    .line 119
    iput v10, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 122
    :cond_3
    iget-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 125
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 127
    iget-boolean v9, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 130
    xor-int/2addr v9, v8

    .line 132
    if-eqz v9, :cond_9

    .line 133
    iget-object v9, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {v0, v8}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCurrentColor(Z)I

    .line 137
    move-result v12

    .line 140
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v9, 0x0

    .line 144
    move v14, v9

    .line 145
    move v15, v14

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    :goto_2
    if-ge v12, v3, :cond_7

    .line 149
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v16

    .line 154
    move-object/from16 v7, v16

    .line 155
    check-cast v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 157
    iget v8, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 159
    aget-object v8, v4, v8

    .line 161
    iget v10, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 163
    aget-boolean v8, v8, v10

    .line 165
    if-nez v8, :cond_4

    .line 167
    goto :goto_4

    .line 169
    :cond_4
    invoke-virtual {v0, v10}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 170
    move-result v8

    .line 173
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 174
    invoke-virtual {v0, v7}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 176
    move-result v13

    .line 179
    if-eqz v12, :cond_6

    .line 180
    iget-object v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 182
    aget-object v7, v11, v7

    .line 184
    aget-object v7, v7, v10

    .line 186
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 188
    invoke-virtual {v5, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    iget v10, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndX:F

    .line 194
    const/4 v11, 0x1

    .line 196
    cmpl-float v14, v10, v11

    .line 197
    if-eqz v14, :cond_5

    .line 199
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndY:F

    .line 201
    cmpl-float v11, v7, v11

    .line 203
    if-eqz v11, :cond_5

    .line 205
    invoke-virtual {v5, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    goto :goto_3

    .line 210
    :cond_5
    invoke-virtual {v5, v8, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    :goto_3
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 214
    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 219
    move v14, v8

    .line 221
    move v15, v13

    .line 222
    const/4 v8, 0x1

    .line 223
    const/4 v13, 0x1

    .line 224
    goto :goto_2

    .line 225
    :cond_7
    :goto_4
    iget-boolean v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 226
    if-nez v2, :cond_8

    .line 228
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 230
    if-ne v2, v6, :cond_9

    .line 232
    :cond_8
    if-eqz v13, :cond_9

    .line 234
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 236
    invoke-virtual {v5, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    iget v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 242
    iget v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 244
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 249
    iget v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 251
    iget v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 253
    sub-float/2addr v3, v14

    .line 255
    sub-float/2addr v6, v15

    .line 256
    mul-float/2addr v3, v3

    .line 257
    mul-float/2addr v6, v6

    .line 258
    add-float/2addr v6, v3

    .line 259
    float-to-double v6, v6

    .line 260
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 261
    move-result-wide v6

    .line 264
    double-to-float v3, v6

    .line 265
    iget v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 266
    div-float/2addr v3, v6

    .line 268
    const v6, 0x3e99999a    # 0.3f

    .line 269
    sub-float/2addr v3, v6

    .line 272
    const/high16 v6, 0x40800000    # 4.0f

    .line 273
    mul-float/2addr v3, v6

    .line 275
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    .line 276
    move-result v3

    .line 279
    const/high16 v6, 0x3f800000    # 1.0f

    .line 280
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 282
    move-result v3

    .line 285
    const/high16 v6, 0x437f0000    # 255.0f

    .line 286
    mul-float/2addr v3, v6

    .line 288
    float-to-int v3, v3

    .line 289
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 293
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 295
    :cond_9
    const/4 v2, 0x0

    .line 298
    :goto_5
    const/4 v3, 0x3

    .line 299
    if-ge v2, v3, :cond_f

    .line 300
    invoke-virtual {v0, v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 302
    move-result v5

    .line 305
    const/4 v6, 0x0

    .line 306
    :goto_6
    if-ge v6, v3, :cond_e

    .line 307
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 309
    aget-object v7, v7, v2

    .line 311
    aget-object v7, v7, v6

    .line 313
    invoke-virtual {v0, v6}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 315
    move-result v8

    .line 318
    iget v9, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->translationY:F

    .line 319
    iget-boolean v10, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mUseLockPatternDrawable:Z

    .line 321
    if-eqz v10, :cond_c

    .line 323
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 325
    aget-object v8, v4, v2

    .line 327
    aget-boolean v8, v8, v6

    .line 329
    new-instance v9, Landroid/graphics/Rect;

    .line 331
    iget v10, v0, Landroid/view/View;->mPaddingLeft:I

    .line 333
    int-to-float v10, v10

    .line 335
    int-to-float v11, v6

    .line 336
    iget v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 337
    mul-float/2addr v11, v12

    .line 339
    add-float/2addr v11, v10

    .line 340
    float-to-int v11, v11

    .line 341
    iget v13, v0, Landroid/view/View;->mPaddingTop:I

    .line 342
    int-to-float v13, v13

    .line 344
    int-to-float v14, v2

    .line 345
    iget v15, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 346
    mul-float/2addr v14, v15

    .line 348
    add-float/2addr v14, v13

    .line 349
    float-to-int v14, v14

    .line 350
    add-int/lit8 v3, v6, 0x1

    .line 351
    int-to-float v3, v3

    .line 353
    mul-float/2addr v3, v12

    .line 354
    add-float/2addr v3, v10

    .line 355
    float-to-int v3, v3

    .line 356
    add-int/lit8 v10, v2, 0x1

    .line 357
    int-to-float v10, v10

    .line 359
    mul-float/2addr v10, v15

    .line 360
    add-float/2addr v10, v13

    .line 361
    float-to-int v10, v10

    .line 362
    invoke-direct {v9, v11, v14, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    iget v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 366
    div-int/lit8 v3, v3, 0x2

    .line 368
    int-to-float v3, v3

    .line 370
    div-float/2addr v7, v3

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 375
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    .line 378
    move-result v3

    .line 381
    int-to-float v3, v3

    .line 382
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    .line 383
    move-result v9

    .line 386
    int-to-float v9, v9

    .line 387
    invoke-virtual {v1, v7, v7, v3, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 388
    const/high16 v3, 0x3f800000    # 1.0f

    .line 391
    if-eqz v8, :cond_b

    .line 393
    cmpl-float v7, v7, v3

    .line 395
    if-lez v7, :cond_a

    .line 397
    goto :goto_7

    .line 399
    :cond_a
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    goto :goto_8

    .line 405
    :cond_b
    :goto_7
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 411
    :goto_9
    const/high16 v12, 0x437f0000    # 255.0f

    .line 414
    goto :goto_a

    .line 416
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 419
    move-result v10

    .line 422
    if-eqz v10, :cond_d

    .line 423
    iget-boolean v10, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwAnimating:Z

    .line 425
    if-eqz v10, :cond_d

    .line 427
    move-object v8, v1

    .line 429
    check-cast v8, Landroid/graphics/RecordingCanvas;

    .line 430
    iget-object v9, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 432
    iget-object v10, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 434
    iget-object v11, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 436
    iget-object v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 438
    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 440
    goto :goto_9

    .line 443
    :cond_d
    float-to-int v8, v8

    .line 444
    int-to-float v8, v8

    .line 445
    float-to-int v10, v5

    .line 446
    int-to-float v10, v10

    .line 447
    add-float/2addr v10, v9

    .line 448
    iget v9, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 449
    aget-object v11, v4, v2

    .line 451
    aget-boolean v11, v11, v6

    .line 453
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->alpha:F

    .line 455
    iget-object v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 457
    invoke-virtual {v0, v11}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCurrentColor(Z)I

    .line 459
    move-result v11

    .line 462
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 466
    const/high16 v12, 0x437f0000    # 255.0f

    .line 468
    mul-float/2addr v7, v12

    .line 470
    float-to-int v7, v7

    .line 471
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 472
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 475
    invoke-virtual {v1, v8, v10, v9, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 480
    const/4 v3, 0x3

    .line 482
    goto/16 :goto_6

    .line 483
    :cond_e
    const/high16 v3, 0x3f800000    # 1.0f

    .line 485
    const/high16 v12, 0x437f0000    # 255.0f

    .line 487
    add-int/lit8 v2, v2, 0x1

    .line 489
    goto/16 :goto_5

    .line 491
    :cond_f
    return-void
    .line 493
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    const/16 v1, 0x9

    .line 21
    if-eq v0, v1, :cond_1

    .line 23
    const/16 v1, 0xa

    .line 25
    if-eq v0, v1, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x2

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 47
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 50
    move-result p0

    .line 53
    return p0
    .line 54
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 6
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    move-result v2

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    move-result p1

    .line 17
    const/high16 v3, -0x80000000

    .line 18
    if-eq p1, v3, :cond_0

    .line 20
    if-eqz p1, :cond_1

    .line 22
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 29
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 30
    move-result p1

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 34
    move-result p2

    .line 37
    if-eq p2, v3, :cond_2

    .line 38
    if-eqz p2, :cond_3

    .line 40
    move v1, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v1

    .line 47
    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAspect:I

    .line 48
    if-eqz p1, :cond_6

    .line 50
    const/4 p2, 0x1

    .line 52
    if-eq p1, p2, :cond_5

    .line 53
    const/4 p2, 0x2

    .line 55
    if-eq p1, p2, :cond_4

    .line 56
    goto :goto_2

    .line 58
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 59
    move-result v0

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 64
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v0

    .line 72
    move v1, v0

    .line 73
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 74
    return-void
    .line 77
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    invoke-static {}, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->values()[Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 11
    move-result-object v0

    .line 14
    iget v1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 15
    aget-object v0, v0, v1

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 19
    iget-boolean v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 23
    iget-boolean p1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 25
    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 27
    return-void
    .line 29
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;

    .line 6
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v2

    .line 13
    iget-boolean v3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 14
    iget-boolean p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 16
    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;IZZ)V

    .line 18
    return-object v1
    .line 21
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2
    sub-int/2addr p1, p3

    .line 4
    iget p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 5
    sub-int/2addr p1, p3

    .line 7
    int-to-float p3, p1

    .line 8
    const/high16 p4, 0x40400000    # 3.0f

    .line 9
    div-float/2addr p3, p4

    .line 11
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 12
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    sub-int/2addr p2, p3

    .line 16
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 17
    sub-int/2addr p2, p3

    .line 19
    int-to-float p3, p2

    .line 20
    div-float/2addr p3, p4

    .line 21
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 22
    iget-object p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 24
    invoke-virtual {p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 26
    iget p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 29
    const/high16 p4, 0x40000000    # 2.0f

    .line 31
    div-float/2addr p3, p4

    .line 33
    iget v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 34
    div-float/2addr v0, p4

    .line 36
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    .line 37
    move-result p3

    .line 40
    iget p4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotHitFactor:F

    .line 41
    mul-float/2addr p3, p4

    .line 43
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotHitRadius:F

    .line 44
    iget-boolean p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mUseLockPatternDrawable:Z

    .line 46
    if-eqz p3, :cond_0

    .line 48
    iget-object p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 52
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 54
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    iget-object p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 61
    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    .line 63
    invoke-virtual {p3, p4, p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    :cond_0
    return-void
    .line 68
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 6
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1c

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 11
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    goto/16 :goto_9

    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    move-result v2

    .line 22
    const v4, 0x7f1306a6    # @string/lockscreen_access_pattern_cleared 'Pattern cleared'

    .line 23
    const v5, 0x7f1306a8    # @string/lockscreen_access_pattern_start 'Pattern started'

    .line 26
    const/4 v6, 0x1

    .line 29
    const/high16 v7, 0x40000000    # 2.0f

    .line 30
    if-eqz v2, :cond_18

    .line 32
    const/4 v8, 0x3

    .line 34
    const/4 v9, 0x2

    .line 35
    if-eq v2, v6, :cond_d

    .line 36
    if-eq v2, v9, :cond_3

    .line 38
    if-eq v2, v8, :cond_1

    .line 40
    return v3

    .line 42
    :cond_1
    iget-boolean v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 43
    if-eqz v1, :cond_2

    .line 45
    iput-boolean v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 47
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 49
    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->resetPattern()V

    .line 54
    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    return v6

    .line 66
    :cond_3
    iget v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathWidth:I

    .line 67
    int-to-float v2, v2

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 70
    move-result v4

    .line 73
    iget-object v7, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 76
    move v7, v3

    .line 79
    :goto_0
    add-int/lit8 v8, v4, 0x1

    .line 80
    if-ge v3, v8, :cond_b

    .line 82
    if-ge v3, v4, :cond_4

    .line 84
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 86
    move-result v8

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 91
    move-result v8

    .line 94
    :goto_1
    if-ge v3, v4, :cond_5

    .line 95
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 97
    move-result v9

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 102
    move-result v9

    .line 105
    :goto_2
    invoke-virtual {v0, v8, v9}, Lcom/android/keyguard/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 106
    move-result-object v10

    .line 109
    iget-object v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 112
    move-result v11

    .line 115
    if-eqz v10, :cond_6

    .line 116
    if-ne v11, v6, :cond_6

    .line 118
    iput-boolean v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 120
    iget-object v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 122
    invoke-virtual {v12}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 124
    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v12, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v12

    .line 132
    invoke-virtual {v0, v12}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

    .line 136
    if-eqz v12, :cond_6

    .line 138
    check-cast v12, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 140
    iget-object v12, v12, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 142
    iget-object v13, v12, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 144
    iget-object v12, v12, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 146
    invoke-virtual {v13, v12}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    :cond_6
    iget v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 151
    sub-float v12, v8, v12

    .line 153
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 155
    move-result v12

    .line 158
    iget v13, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 159
    sub-float v13, v9, v13

    .line 161
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 163
    move-result v13

    .line 166
    const/4 v14, 0x0

    .line 167
    cmpl-float v12, v12, v14

    .line 168
    if-gtz v12, :cond_7

    .line 170
    cmpl-float v12, v13, v14

    .line 172
    if-lez v12, :cond_8

    .line 174
    :cond_7
    move v7, v6

    .line 176
    :cond_8
    iget-boolean v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 177
    if-eqz v12, :cond_a

    .line 179
    if-lez v11, :cond_a

    .line 181
    iget-object v12, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 183
    add-int/lit8 v11, v11, -0x1

    .line 185
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v11

    .line 190
    check-cast v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 191
    iget v12, v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 193
    invoke-virtual {v0, v12}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 195
    move-result v12

    .line 198
    iget v11, v11, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 199
    invoke-virtual {v0, v11}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 201
    move-result v11

    .line 204
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    .line 205
    move-result v13

    .line 208
    sub-float/2addr v13, v2

    .line 209
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    .line 210
    move-result v8

    .line 213
    add-float/2addr v8, v2

    .line 214
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    .line 215
    move-result v12

    .line 218
    sub-float/2addr v12, v2

    .line 219
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 220
    move-result v9

    .line 223
    add-float/2addr v9, v2

    .line 224
    if-eqz v10, :cond_9

    .line 225
    iget v11, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 227
    const/high16 v14, 0x3f000000    # 0.5f

    .line 229
    mul-float/2addr v11, v14

    .line 231
    iget v15, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 232
    mul-float/2addr v15, v14

    .line 234
    iget v14, v10, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 235
    invoke-virtual {v0, v14}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 237
    move-result v14

    .line 240
    iget v10, v10, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 241
    invoke-virtual {v0, v10}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 243
    move-result v10

    .line 246
    sub-float v5, v14, v11

    .line 247
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    .line 249
    move-result v13

    .line 252
    add-float/2addr v14, v11

    .line 253
    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    .line 254
    move-result v8

    .line 257
    sub-float v5, v10, v15

    .line 258
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    .line 260
    move-result v12

    .line 263
    add-float/2addr v10, v15

    .line 264
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    .line 265
    move-result v9

    .line 268
    :cond_9
    iget-object v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 269
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 271
    move-result v10

    .line 274
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 275
    move-result v11

    .line 278
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 279
    move-result v8

    .line 282
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 283
    move-result v9

    .line 286
    invoke-virtual {v5, v10, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 287
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 290
    const v5, 0x7f1306a8    # @string/lockscreen_access_pattern_start 'Pattern started'

    .line 292
    goto/16 :goto_0

    .line 295
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 297
    move-result v2

    .line 300
    iput v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 303
    move-result v1

    .line 306
    iput v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 307
    if-eqz v7, :cond_c

    .line 309
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 311
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 313
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 315
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 320
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 323
    iget-object v0, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 325
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    :cond_c
    return v6

    .line 330
    :cond_d
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 333
    move-result v1

    .line 336
    if-nez v1, :cond_17

    .line 337
    iput-boolean v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 339
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 341
    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 343
    move v1, v3

    .line 346
    :goto_3
    if-ge v1, v8, :cond_10

    .line 347
    move v2, v3

    .line 349
    :goto_4
    if-ge v2, v8, :cond_f

    .line 350
    iget-object v4, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mCellStates:[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 352
    aget-object v4, v4, v1

    .line 354
    aget-object v4, v4, v2

    .line 356
    iget-object v5, v4, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 358
    if-eqz v5, :cond_e

    .line 360
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 362
    const/4 v5, 0x0

    .line 365
    iput-object v5, v4, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 366
    iget v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 368
    int-to-float v5, v5

    .line 370
    div-float/2addr v5, v7

    .line 371
    iput v5, v4, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 372
    const/4 v5, 0x1

    .line 374
    iput v5, v4, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndX:F

    .line 375
    iput v5, v4, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndY:F

    .line 377
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 379
    goto :goto_4

    .line 381
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 382
    goto :goto_3

    .line 384
    :cond_10
    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 385
    const v2, 0x7f1306a7    # @string/lockscreen_access_pattern_detected 'Pattern completed'

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 390
    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

    .line 397
    if-eqz v1, :cond_16

    .line 399
    iget-object v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 401
    move-object v10, v1

    .line 403
    check-cast v10, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 404
    iget-object v1, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 406
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 408
    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 410
    iget-object v1, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 413
    iget-object v4, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 415
    iput-boolean v3, v4, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 417
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 419
    if-eqz v1, :cond_11

    .line 421
    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 423
    :cond_11
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 426
    move-result v1

    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 430
    move-result v4

    .line 433
    const/4 v5, 0x4

    .line 434
    if-ge v4, v5, :cond_13

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 437
    move-result v2

    .line 440
    if-ne v2, v6, :cond_12

    .line 441
    iget-object v2, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 443
    iget-object v2, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 445
    const-class v3, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 447
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 449
    move-result-object v15

    .line 452
    const-string v16, "empty pattern input"

    .line 453
    const-wide v13, 0x3fe6666666666666L    # 0.7

    .line 455
    new-instance v3, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 460
    const/4 v12, 0x1

    .line 462
    move-object v11, v3

    .line 463
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    .line 464
    check-cast v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 467
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 472
    move-result-object v3

    .line 475
    iget-object v4, v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 476
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 478
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 483
    move-result-wide v4

    .line 486
    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 487
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    .line 489
    :cond_12
    iget-object v2, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 492
    iget-object v2, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 494
    iput-boolean v6, v2, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 496
    const/4 v14, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    const/4 v15, 0x0

    .line 500
    move v11, v1

    .line 501
    move v13, v1

    .line 502
    invoke-virtual/range {v10 .. v15}, Lcom/android/keyguard/KeyguardPatternViewController$1;->onPatternChecked(IIIZZ)V

    .line 503
    goto/16 :goto_7

    .line 506
    :cond_13
    iget-object v4, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 508
    iget-object v4, v4, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 510
    invoke-virtual {v4, v8}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 512
    iget-object v4, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 515
    iget-object v4, v4, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 517
    invoke-virtual {v4, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    .line 522
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    move-result-object v5

    .line 530
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    move-result v7

    .line 534
    if-eqz v7, :cond_14

    .line 535
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    move-result-object v7

    .line 540
    check-cast v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 541
    iget v8, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 543
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 545
    invoke-static {v8, v7}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 547
    move-result-object v7

    .line 550
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    goto :goto_5

    .line 554
    :cond_14
    if-nez v1, :cond_15

    .line 555
    const-class v5, Lcom/miui/systemui/MultiUserController;

    .line 557
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 559
    move-result-object v5

    .line 562
    check-cast v5, Lcom/miui/systemui/MultiUserController;

    .line 563
    iget v5, v5, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 565
    move v12, v5

    .line 567
    goto :goto_6

    .line 568
    :cond_15
    move v12, v3

    .line 569
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 570
    iget-object v5, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 573
    iget-object v14, v5, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 575
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 577
    move-result-object v15

    .line 580
    iget-object v4, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 581
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 583
    move-result-object v13

    .line 586
    new-instance v4, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;

    .line 587
    invoke-direct {v4, v10, v1, v3}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController$1;II)V

    .line 589
    new-instance v3, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;

    .line 592
    invoke-direct {v3, v10, v12, v6}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController$1;II)V

    .line 594
    move v11, v1

    .line 597
    move-object/from16 v16, v4

    .line 598
    move-object/from16 v17, v3

    .line 600
    invoke-static/range {v11 .. v17}, Lcom/android/keyguard/MiuiLockPatternChecker;->checkCredentialForUsers(IILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/keyguard/OnCheckForUsersCallback;Lcom/android/keyguard/OnCheckForUsersCallback;)Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 602
    move-result-object v1

    .line 605
    iput-object v1, v5, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 606
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 608
    move-result v1

    .line 611
    if-le v1, v9, :cond_16

    .line 612
    iget-object v1, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 614
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 616
    move-result-object v1

    .line 619
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 620
    iget-object v1, v10, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 623
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 625
    move-result-object v1

    .line 628
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 629
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 632
    :cond_17
    return v6

    .line 635
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->resetPattern()V

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 639
    move-result v2

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 643
    move-result v1

    .line 646
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 647
    move-result-object v5

    .line 650
    if-eqz v5, :cond_19

    .line 651
    iput-boolean v6, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 653
    iget-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 655
    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 657
    sget-object v3, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 660
    iput-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 662
    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 664
    const v4, 0x7f1306a8    # @string/lockscreen_access_pattern_start 'Pattern started'

    .line 666
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 669
    move-result-object v3

    .line 672
    invoke-virtual {v0, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

    .line 676
    if-eqz v3, :cond_1a

    .line 678
    check-cast v3, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 680
    iget-object v3, v3, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 682
    iget-object v4, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 684
    iget-object v3, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 686
    invoke-virtual {v4, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 688
    goto :goto_8

    .line 691
    :cond_19
    iget-boolean v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 692
    if-eqz v8, :cond_1a

    .line 694
    iput-boolean v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 696
    iget-object v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mExploreByTouchHelper:Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;

    .line 698
    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 700
    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 703
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 705
    move-result-object v3

    .line 708
    invoke-virtual {v0, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 709
    :cond_1a
    :goto_8
    if-eqz v5, :cond_1b

    .line 712
    iget v3, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 714
    invoke-virtual {v0, v3}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 716
    move-result v3

    .line 719
    iget v4, v5, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 720
    invoke-virtual {v0, v4}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 722
    move-result v4

    .line 725
    iget v5, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 726
    div-float/2addr v5, v7

    .line 728
    iget v8, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 729
    div-float/2addr v8, v7

    .line 731
    sub-float v7, v3, v5

    .line 732
    float-to-int v7, v7

    .line 734
    sub-float v9, v4, v8

    .line 735
    float-to-int v9, v9

    .line 737
    add-float/2addr v3, v5

    .line 738
    float-to-int v3, v3

    .line 739
    add-float/2addr v4, v8

    .line 740
    float-to-int v4, v4

    .line 741
    invoke-virtual {v0, v7, v9, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 742
    :cond_1b
    iput v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 745
    iput v1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 747
    return v6

    .line 749
    :cond_1c
    :goto_9
    return v3
    .line 750
.end method

.method public final resetPattern()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 7
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    return-void
    .line 17
.end method

.method public setColors(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mRegularColor:I

    .line 2
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mErrorColor:I

    .line 4
    iput p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mSuccessColor:I

    .line 6
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
    .line 16
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_2

    .line 6
    sget-object p1, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V
    .locals 2

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 8
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Animate:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    .line 11
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 12
    iget v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressX:F

    .line 14
    iget p1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInProgressY:F

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFadePattern(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 2
    return-void
    .line 4
.end method

.method public setOnPatternListener(Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;

    .line 2
    return-void
    .line 4
.end method

.method public setPattern(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 31
    iget v2, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 33
    aget-object v1, v1, v2

    .line 35
    const/4 v2, 0x1

    .line 37
    iget v0, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 38
    aput-boolean v2, v1, v0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    .line 43
    return-void
    .line 46
.end method

.method public final startCellStateAnimation(Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    move/from16 v3, p2

    .line 6
    move/from16 v4, p3

    .line 8
    move/from16 v5, p4

    .line 10
    move-wide/from16 v0, p6

    .line 12
    move-wide/from16 v8, p8

    .line 14
    move-object/from16 v6, p10

    .line 16
    move-object/from16 v10, p11

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 20
    move-result v11

    .line 23
    const/high16 v12, 0x3f800000    # 1.0f

    .line 24
    const/4 v13, 0x2

    .line 26
    if-eqz v11, :cond_0

    .line 27
    iput v3, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->alpha:F

    .line 29
    iput v5, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->translationY:F

    .line 31
    iget v11, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 33
    div-int/2addr v11, v13

    .line 35
    int-to-float v11, v11

    .line 36
    mul-float/2addr v11, v12

    .line 37
    iput v11, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 38
    const/4 v11, 0x1

    .line 40
    iput-boolean v11, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwAnimating:Z

    .line 41
    iget v14, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->row:I

    .line 43
    invoke-virtual {v7, v14}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 45
    move-result v14

    .line 48
    add-float/2addr v14, v4

    .line 49
    invoke-static {v14}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 50
    move-result-object v4

    .line 53
    iput-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 54
    iget v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->col:I

    .line 56
    invoke-virtual {v7, v4}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 58
    move-result v4

    .line 61
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 62
    move-result-object v4

    .line 65
    iput-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 66
    iget v4, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 68
    div-int/2addr v4, v13

    .line 70
    int-to-float v4, v4

    .line 71
    mul-float v4, v4, p5

    .line 72
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 74
    move-result-object v4

    .line 77
    iput-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 78
    iget-object v4, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getDotColor()I

    .line 82
    move-result v14

    .line 85
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v4, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 89
    const/high16 v14, 0x437f0000    # 255.0f

    .line 91
    float-to-int v15, v14

    .line 93
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    new-instance v4, Landroid/graphics/Paint;

    .line 97
    iget-object v15, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 99
    invoke-direct {v4, v15}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 101
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 104
    move-result-object v4

    .line 107
    iput-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 108
    iget-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 110
    iget v15, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->row:I

    .line 112
    invoke-virtual {v7, v15}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 114
    move-result v15

    .line 117
    add-float/2addr v15, v5

    .line 118
    new-instance v5, Landroid/view/RenderNodeAnimator;

    .line 119
    invoke-direct {v5, v4, v15}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 121
    invoke-virtual {v5, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 124
    invoke-virtual {v5, v0, v1}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 127
    invoke-virtual {v5, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 133
    invoke-virtual {v5}, Landroid/view/RenderNodeAnimator;->start()V

    .line 136
    iget-object v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 139
    iget v5, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 141
    div-int/2addr v5, v13

    .line 143
    int-to-float v5, v5

    .line 144
    mul-float/2addr v5, v12

    .line 145
    new-instance v12, Landroid/view/RenderNodeAnimator;

    .line 146
    invoke-direct {v12, v4, v5}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 148
    invoke-virtual {v12, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 151
    invoke-virtual {v12, v0, v1}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 154
    invoke-virtual {v12, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    invoke-virtual {v12, v7}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 160
    invoke-virtual {v12}, Landroid/view/RenderNodeAnimator;->start()V

    .line 163
    new-instance v4, Lcom/android/keyguard/widget/MiuiLockPatternView$3;

    .line 166
    invoke-direct {v4, v2, v10}, Lcom/android/keyguard/widget/MiuiLockPatternView$3;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 168
    new-instance v5, Landroid/view/RenderNodeAnimator;

    .line 171
    iget-object v2, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 173
    mul-float/2addr v3, v14

    .line 175
    float-to-int v3, v3

    .line 176
    int-to-float v3, v3

    .line 177
    invoke-direct {v5, v2, v11, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 178
    invoke-virtual {v5, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 181
    invoke-virtual {v5, v0, v1}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 184
    invoke-virtual {v5, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 190
    invoke-virtual {v5, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    invoke-virtual {v5}, Landroid/view/RenderNodeAnimator;->start()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 199
    goto :goto_0

    .line 202
    :cond_0
    iput v12, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->alpha:F

    .line 203
    iput v4, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->translationY:F

    .line 205
    iget v11, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 207
    div-int/2addr v11, v13

    .line 209
    int-to-float v11, v11

    .line 210
    mul-float v11, v11, p5

    .line 211
    iput v11, v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 213
    new-array v11, v13, [F

    .line 215
    fill-array-data v11, :array_0

    .line 217
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 220
    move-result-object v11

    .line 223
    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 224
    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 227
    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    new-instance v8, Lcom/android/keyguard/widget/MiuiLockPatternView$1;

    .line 233
    move-object v0, v8

    .line 235
    move-object/from16 v1, p0

    .line 236
    move-object/from16 v2, p1

    .line 238
    move/from16 v3, p2

    .line 240
    move/from16 v4, p3

    .line 242
    move/from16 v5, p4

    .line 244
    move/from16 v6, p5

    .line 246
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/widget/MiuiLockPatternView$1;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFF)V

    .line 248
    invoke-virtual {v11, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance v0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;

    .line 254
    const/4 v1, 0x0

    .line 256
    invoke-direct {v0, v7, v10, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView$2;-><init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Ljava/lang/Object;I)V

    .line 257
    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    :goto_0
    return-void

    .line 266
    nop

    .line 267
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 268
.end method
