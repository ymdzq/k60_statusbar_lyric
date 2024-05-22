.class public Lcom/android/settings/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/settings/LockPatternView$DisplayMode;,
        Lcom/android/settings/LockPatternView$OnPatternListener;,
        Lcom/android/settings/LockPatternView$SavedState;
    }
.end annotation


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field protected mAspect:I

.field protected mBitmapBtnRed:Landroid/graphics/Bitmap;

.field protected mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field protected mBitmapHeight:I

.field protected mBitmapWidth:I

.field protected final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDistancePointsHeight:I

.field private mDistancePointsWidth:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

.field private mFeedbackEffectId:I

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field protected mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

.field protected mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field protected mPatternInProgress:Z

.field protected mSquareHeight:F

.field protected mSquareWidth:F

.field private mStrokeAlpha:I

.field private mSupportHapticVersion2:Z

.field private mWrongPathPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHitFactor(Lcom/android/settings/LockPatternView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/LockPatternView;->mHitFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPatternDrawLookup(Lcom/android/settings/LockPatternView;)[[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCenterXForColumn(Lcom/android/settings/LockPatternView;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCenterYForRow(Lcom/android/settings/LockPatternView;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetColumnHit(Lcom/android/settings/LockPatternView;F)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getColumnHit(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRowHit(Lcom/android/settings/LockPatternView;F)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getRowHit(F)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/android/settings/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 232
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mDrawingProfilingStarted:Z

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 88
    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 95
    iput v1, p0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    .line 96
    iput v1, p0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    .line 100
    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/LockPatternView;->mInputEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/LockPatternView;->mEnableHapticFeedback:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    const v2, 0x3d4ccccd    # 0.05f

    .line 106
    iput v2, p0, Lcom/android/settings/LockPatternView;->mDiameterFactor:F

    const/16 v2, 0x40

    .line 107
    iput v2, p0, Lcom/android/settings/LockPatternView;->mStrokeAlpha:I

    const v2, 0x3f19999a    # 0.6f

    .line 108
    iput v2, p0, Lcom/android/settings/LockPatternView;->mHitFactor:F

    .line 116
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 123
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/settings/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 124
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 125
    iput v0, p0, Lcom/android/settings/LockPatternView;->mDistancePointsHeight:I

    .line 126
    iput v0, p0, Lcom/android/settings/LockPatternView;->mDistancePointsWidth:I

    const/4 v2, 0x6

    .line 131
    iput v2, p0, Lcom/android/settings/LockPatternView;->mFeedbackEffectId:I

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mSupportHapticVersion2:Z

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/settings/LockPatternView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/settings/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 245
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 247
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/settings/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 250
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 251
    new-instance p1, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/LockPatternView;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string/jumbo p1, "sys.haptic.version"

    const-string p2, "1.0"

    .line 252
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "2.0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/LockPatternView;->mSupportHapticVersion2:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockPatternView;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 561
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 1

    .line 568
    invoke-direct {p0, p2}, Lcom/android/settings/LockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 572
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 577
    :cond_1
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    return-object v0

    .line 580
    :cond_2
    invoke-static {p2, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 415
    iget-object v4, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 8

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/android/settings/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    .line 520
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 523
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    sub-int/2addr v0, v1

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    sub-int/2addr v1, v3

    .line 526
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    .line 527
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 529
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 530
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    if-lez v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v3, v5

    .line 533
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 534
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result p2

    if-lez v1, :cond_2

    move v6, v2

    :cond_2
    add-int v4, p2, v6

    .line 537
    :cond_3
    invoke-static {v3, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 540
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    .line 541
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 542
    invoke-direct {p0, p2}, Lcom/android/settings/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 544
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 545
    iget-boolean p2, p0, Lcom/android/settings/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_7

    .line 546
    iget-boolean p2, p0, Lcom/android/settings/LockPatternView;->mSupportHapticVersion2:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    iget v0, p0, Lcom/android/settings/LockPatternView;->mFeedbackEffectId:I

    invoke-virtual {p2, v0}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 547
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    iget p0, p0, Lcom/android/settings/LockPatternView;->mFeedbackEffectId:I

    invoke-virtual {p2, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    goto :goto_1

    :cond_6
    const/4 p2, 0x3

    .line 549
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_7
    :goto_1
    return-object p1

    :cond_8
    return-object p2
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 262
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getCenterXForColumn(I)F
    .locals 1

    .line 752
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 1

    .line 756
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getColumnHit(F)I
    .locals 5

    .line 610
    iget v0, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    .line 611
    iget v1, p0, Lcom/android/settings/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 613
    iget p0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getRowHit(F)I
    .locals 5

    .line 590
    iget v0, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    .line 591
    iget v1, p0, Lcom/android/settings/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 593
    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 728
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->resetPattern()V

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 731
    invoke-direct {p0, v0, p1}, Lcom/android/settings/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 733
    invoke-direct {p0, v1}, Lcom/android/settings/LockPatternView;->setPatternInProgress(Z)V

    .line 734
    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 735
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyPatternStarted()V

    .line 736
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 737
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 738
    invoke-direct {p0, v1}, Lcom/android/settings/LockPatternView;->setPatternInProgress(Z)V

    .line 739
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyPatternCleared()V

    .line 741
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    .line 742
    iput p1, p0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 7

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_4

    if-ge v1, v0, :cond_0

    .line 688
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 689
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 690
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/settings/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 691
    iget-object v5, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v5, v4, :cond_2

    .line 693
    invoke-direct {p0, v4}, Lcom/android/settings/LockPatternView;->setPatternInProgress(Z)V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyPatternStarted()V

    .line 697
    :cond_2
    iget v4, p0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 698
    iget v5, p0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 700
    iget v5, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 701
    iput v2, p0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    .line 702
    iput v3, p0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 715
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->setPatternInProgress(Z)V

    .line 716
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyPatternDetected()V

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 189
    sget-object v0, Lcom/android/settings/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    sget p2, Lcom/android/settings/R$styleable;->LockPatternView_aspect:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "square"

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 193
    iput v2, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v0, "lock_width"

    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 195
    iput p2, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v0, "lock_height"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iput v1, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    const-string v0, "fixed"

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    .line 199
    iput p2, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    goto :goto_0

    .line 201
    :cond_3
    iput v2, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    .line 204
    :goto_0
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/settings/R$styleable;->LockPatternView_paintColor:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/settings/R$styleable;->LockPatternView_wrongColor:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    sget p2, Lcom/android/settings/R$styleable;->LockPatternView_diameterFactor:I

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/LockPatternView;->mDiameterFactor:F

    .line 207
    sget p2, Lcom/android/settings/R$styleable;->LockPatternView_pathStrokeAlpha:I

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/LockPatternView;->mStrokeAlpha:I

    .line 209
    sget p2, Lcom/android/settings/R$styleable;->LockPatternView_btnTouchedBmp:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 210
    sget p2, Lcom/android/settings/R$styleable;->LockPatternView_btnRedBmp:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-ne v3, p2, :cond_4

    .line 212
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 214
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    .line 218
    :goto_1
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    filled-new-array {p2, v0}, [Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_2
    if-ge v2, v1, :cond_6

    .line 220
    aget-object v0, p2, v2

    if-eqz v0, :cond_5

    .line 222
    iget v3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    .line 223
    iget v3, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 226
    :cond_6
    new-instance p2, Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/settings/LockPatternView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/LockPatternView;->mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    .line 227
    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 228
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/settings/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    const v0, 0x110f0273

    .line 377
    invoke-direct {p0, v0}, Lcom/android/settings/LockPatternView;->sendAccessEvent(I)V

    .line 378
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 379
    invoke-interface {p0}, Lcom/android/settings/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 1

    const v0, 0x110f0274

    .line 370
    invoke-direct {p0, v0}, Lcom/android/settings/LockPatternView;->sendAccessEvent(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/settings/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    const v0, 0x110f0275

    .line 363
    invoke-direct {p0, v0}, Lcom/android/settings/LockPatternView;->sendAccessEvent(I)V

    .line 364
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Lcom/android/settings/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->clearPatternDrawLookup()V

    .line 405
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 709
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    .line 680
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 394
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 395
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method protected drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 6

    if-eqz p4, :cond_5

    .line 888
    iget-boolean p4, p0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_0

    goto :goto_1

    .line 891
    :cond_0
    iget-boolean p4, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_1

    .line 893
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 894
    :cond_1
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_2

    .line 896
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 897
    :cond_2
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_4

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_3

    goto :goto_0

    .line 902
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 900
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 890
    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 905
    :goto_2
    iget v0, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    .line 906
    iget v1, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    .line 908
    iget v2, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    .line 909
    iget v3, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    int-to-float v4, v0

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v1, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 915
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 916
    iget v3, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    iget v5, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 918
    iget-object v3, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr p2, v4

    int-to-float p2, p2

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 919
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v1, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 920
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 921
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz p4, :cond_6

    .line 924
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 0

    .line 473
    iget p0, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 0

    .line 467
    iget p0, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 761
    iget-object v2, v0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 762
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 763
    iget-object v4, v0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    .line 765
    iget-object v5, v0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    const/4 v8, 0x1

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v5, v5, 0x2bc

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/settings/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v9, v11

    long-to-int v6, v9

    rem-int/2addr v6, v5

    .line 773
    div-int/lit16 v5, v6, 0x2bc

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockPatternView;->clearPatternDrawLookup()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_0

    .line 777
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 778
    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    aget-object v11, v4, v11

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aput-boolean v8, v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    if-ge v5, v3, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 787
    rem-int/lit16 v6, v6, 0x2bc

    int-to-float v6, v6

    const/high16 v9, 0x442f0000    # 700.0f

    div-float/2addr v6, v9

    add-int/lit8 v9, v5, -0x1

    .line 791
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 792
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/android/settings/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 793
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/settings/LockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 795
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 797
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    invoke-direct {v0, v11}, Lcom/android/settings/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    sub-float/2addr v11, v10

    mul-float/2addr v11, v6

    .line 799
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/settings/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    sub-float/2addr v5, v9

    mul-float/2addr v6, v5

    add-float/2addr v10, v11

    .line 800
    iput v10, v0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    add-float/2addr v9, v6

    .line 801
    iput v9, v0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    .line 804
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 807
    :cond_3
    iget v5, v0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    .line 808
    iget v6, v0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    .line 810
    iget v9, v0, Lcom/android/settings/LockPatternView;->mDiameterFactor:F

    mul-float/2addr v9, v5

    .line 811
    iget-object v10, v0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 812
    iget-object v10, v0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 814
    iget-object v9, v0, Lcom/android/settings/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 815
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 818
    iget v10, v0, Landroid/view/View;->mPaddingTop:I

    .line 819
    iget v11, v0, Landroid/view/View;->mPaddingLeft:I

    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x3

    if-ge v12, v13, :cond_5

    int-to-float v14, v10

    int-to-float v15, v12

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_4

    int-to-float v7, v11

    int-to-float v13, v15

    mul-float/2addr v13, v5

    add-float/2addr v7, v13

    float-to-int v7, v7

    float-to-int v13, v14

    .line 826
    aget-object v17, v4, v12

    aget-boolean v8, v17, v15

    invoke-virtual {v0, v1, v7, v13, v8}, Lcom/android/settings/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/4 v13, 0x3

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_2

    .line 834
    :cond_5
    iget-boolean v5, v0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 838
    :goto_5
    iget-object v6, v0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 839
    :goto_6
    iget-object v7, v0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v5, :cond_f

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_7
    if-ge v7, v3, :cond_b

    .line 844
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 849
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v10, v4, v10

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_9

    goto :goto_9

    .line 854
    :cond_9
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/android/settings/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 855
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/settings/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    if-nez v7, :cond_a

    .line 857
    invoke-virtual {v9, v10, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    .line 859
    :cond_a
    invoke-virtual {v9, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v8

    goto :goto_7

    .line 864
    :cond_b
    :goto_9
    iget-boolean v2, v0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_d

    :cond_c
    if-eqz v16, :cond_d

    .line 866
    iget v2, v0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 868
    :cond_d
    iget-object v2, v0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_e

    .line 869
    iget-object v2, v0, Lcom/android/settings/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 871
    :cond_e
    iget-object v2, v0, Lcom/android/settings/LockPatternView;->mWrongPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 876
    :cond_f
    :goto_a
    iget-object v0, v0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 626
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 636
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 633
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 639
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 642
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 481
    invoke-virtual {p0, p2, v1}, Lcom/android/settings/LockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 483
    iget v0, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 494
    :cond_0
    iget p1, p0, Lcom/android/settings/LockPatternView;->mDistancePointsWidth:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 495
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v1, :cond_2

    sget p2, Lcom/android/settings/R$dimen;->pattern_settings_lock_pattern_view_size:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/settings/LockPatternView;->mDistancePointsWidth:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v1, :cond_3

    sget v0, Lcom/android/settings/R$dimen;->pattern_settings_lock_pattern_view_size:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/settings/LockPatternView;->mDistancePointsHeight:I

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_3

    .line 491
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 488
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    .line 485
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, p1

    .line 499
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 941
    check-cast p1, Lcom/android/settings/LockPatternView$SavedState;

    .line 942
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 947
    invoke-static {}, Lcom/android/settings/LockPatternView$DisplayMode;->values()[Lcom/android/settings/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 948
    invoke-virtual {p1}, Lcom/android/settings/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInputEnabled:Z

    .line 949
    invoke-virtual {p1}, Lcom/android/settings/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    .line 950
    invoke-virtual {p1}, Lcom/android/settings/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 930
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 437
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr p1, p3

    iget p3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    .line 438
    iput p1, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    .line 440
    iget p1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr p2, p1

    iget p1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    .line 441
    iput p1, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    .line 443
    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mExploreByTouchHelper:Lcom/android/settings/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 647
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 662
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_2

    .line 663
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->resetPattern()V

    .line 664
    invoke-direct {p0, v1}, Lcom/android/settings/LockPatternView;->setPatternInProgress(Z)V

    .line 665
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->notifyPatternCleared()V

    :cond_2
    return v2

    .line 659
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 656
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 653
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method protected resolveMeasured(II)I
    .locals 1

    .line 449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 450
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    move p2, p0

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public setBitmapBtnTouched(I)V
    .locals 0

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V
    .locals 2

    .line 338
    iput-object p1, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    .line 339
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 340
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/LockPatternView;->mAnimatingPeriodStart:J

    .line 345
    iget-object p1, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/LockPatternView;->mInProgressX:F

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/LockPatternView;->mInProgressY:F

    .line 348
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 341
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/android/settings/LockPatternView$OnPatternListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/settings/LockPatternView;->mOnPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/android/settings/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v0, p0, Lcom/android/settings/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    invoke-direct {p0}, Lcom/android/settings/LockPatternView;->clearPatternDrawLookup()V

    .line 324
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 325
    iget-object v1, p0, Lcom/android/settings/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/android/settings/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
