.class public Lcom/android/systemui/fsgesture/GestureBackArrowView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mArrow:Landroid/graphics/Bitmap;

.field public mArrowAnimator:Landroid/animation/ValueAnimator;

.field public final mArrowDstRect:Landroid/graphics/Rect;

.field public mArrowHeight:I

.field public final mArrowPaint:Landroid/graphics/Paint;

.field public mArrowShown:Z

.field public mArrowWidth:I

.field public final mBackDstRect:Landroid/graphics/Rect;

.field public final mBackHeight:I

.field public final mBackWidth:I

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mCurArrowAlpha:I

.field public mCurrentY:F

.field public mDisplayWidth:I

.field public mExpectBackHeight:F

.field public mIconHeight:I

.field public mIconNeedDraw:Z

.field public mIconScale:F

.field public mIconWidth:I

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastIconAnimator:Landroid/animation/ValueAnimator;

.field public mLeftBackground:Landroid/graphics/Bitmap;

.field public mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field public mOffsetX:F

.field public final mPosition:I

.field public mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field public mRightBackground:Landroid/graphics/Bitmap;

.field public mScale:F

.field public mStartX:F

.field public final mVibrator:Landroid/os/Vibrator;

.field public mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 4
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 6
    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 9
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 11
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 13
    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 11
    sget-object p2, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 15
    new-instance p2, Landroid/content/res/Configuration;

    .line 17
    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 32
    const-string p2, "keyguard"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 40
    check-cast p2, Landroid/app/KeyguardManager;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    .line 53
    const/4 p2, 0x1

    .line 55
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    .line 67
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 69
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->loadResources()V

    .line 83
    if-eqz p3, :cond_1

    .line 86
    if-eq p3, p2, :cond_0

    .line 88
    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 93
    move-result p1

    .line 96
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    .line 97
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 101
    move-result p1

    .line 104
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    move-result p1

    .line 113
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    .line 114
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 118
    move-result p1

    .line 121
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    .line 122
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    .line 124
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 129
    new-instance p1, Landroid/graphics/Rect;

    .line 131
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p1

    .line 141
    const-string/jumbo p2, "vibrator"

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 148
    check-cast p1, Landroid/os/Vibrator;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    .line 151
    return-void
    .line 153
.end method


# virtual methods
.method public final changeScale(FFZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 9
    new-array v1, v0, [F

    .line 10
    const/4 v2, 0x0

    .line 12
    aput p1, v1, v2

    .line 13
    const/4 v3, 0x1

    .line 15
    aput p2, v1, v3

    .line 16
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 22
    const/16 v1, 0xc8

    .line 24
    int-to-long v3, v1

    .line 26
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 30
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 32
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    iget-object p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 37
    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;

    .line 39
    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;ZF)V

    .line 41
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 52
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 56
    :cond_1
    new-array p1, v0, [F

    .line 59
    fill-array-data p1, :array_0

    .line 61
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 64
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 68
    const-wide/16 p2, 0x64

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 75
    sget-object p2, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 77
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 82
    new-instance p2, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;

    .line 84
    invoke-direct {p2, p0, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)V

    .line 86
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    return-void

    .line 97
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 98
.end method

.method public getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 2
    return-object p0
    .line 4
.end method

.method public final loadResources()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f080d76    # @drawable/gesture_back_background 'res/drawable-440dpi/gesture_back_background.webp'

    .line 10
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 17
    new-instance v6, Landroid/graphics/Matrix;

    .line 19
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 26
    const/high16 v0, 0x43340000    # 180.0f

    .line 29
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 31
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 34
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v4

    .line 41
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    move-result v5

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 58
    const v1, 0x7f08118d    # @drawable/ic_quick_switch_empty 'res/drawable-440dpi/ic_quick_switch_empty.webp'

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 68
    move-result v0

    .line 71
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 76
    move-result v0

    .line 79
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v0

    .line 89
    const v1, 0x7f080d75    # @drawable/gesture_back_arrow 'res/drawable-440dpi/gesture_back_arrow.webp'

    .line 90
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 93
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 99
    move-result v0

    .line 102
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 107
    move-result v0

    .line 110
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    .line 111
    return-void
    .line 113
.end method

.method public final onActionDown(FFF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p3, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    .line 7
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    .line 12
    int-to-float p3, p3

    .line 14
    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    .line 15
    const/high16 p3, 0x41a00000    # 20.0f

    .line 17
    sub-float/2addr p1, p3

    .line 19
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 20
    :goto_0
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    .line 22
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 24
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 32
    return-void
    .line 34
.end method

.method public final onActionMove(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mOffsetX:F

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 4
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    .line 27
    move-result p1

    .line 30
    const/high16 v0, 0x41a00000    # 20.0f

    .line 31
    div-float/2addr p1, v0

    .line 33
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 36
    return-void
    .line 39
.end method

.method public final onActionUp(FLcom/android/systemui/fsgesture/GestureStubView$1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 25
    const/high16 v0, 0x41a00000    # 20.0f

    .line 27
    div-float/2addr p1, v0

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 30
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [F

    .line 33
    const/4 v1, 0x0

    .line 35
    aput p1, v0, v1

    .line 36
    const/4 p1, 0x1

    .line 38
    const/4 v1, 0x0

    .line 39
    aput v1, v0, p1

    .line 40
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 42
    move-result-object v0

    .line 45
    const-wide/16 v1, 0x64

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;

    .line 56
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    sget-object p1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 74
    return-void
    .line 76
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7
    move-result p1

    .line 10
    const/high16 v0, 0x400000

    .line 11
    and-int/2addr p1, v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->loadResources()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 9
    iget v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    .line 11
    int-to-float v4, v3

    .line 13
    iget v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 14
    mul-float/2addr v4, v5

    .line 16
    iget v6, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    .line 17
    const/4 v7, 0x1

    .line 19
    const/high16 v8, 0x40000000    # 2.0f

    .line 20
    const/4 v9, 0x0

    .line 22
    if-eqz v6, :cond_2

    .line 23
    if-eq v6, v7, :cond_0

    .line 25
    move v3, v9

    .line 27
    move v4, v3

    .line 28
    move v6, v4

    .line 29
    move v10, v6

    .line 30
    move v11, v10

    .line 31
    move v12, v11

    .line 32
    goto/16 :goto_2

    .line 33
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 35
    iget v6, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    .line 37
    int-to-float v3, v3

    .line 39
    mul-float/2addr v3, v5

    .line 40
    iget v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    .line 41
    add-float/2addr v3, v5

    .line 43
    float-to-int v3, v3

    .line 44
    sub-int v3, v6, v3

    .line 45
    float-to-int v10, v5

    .line 47
    sub-int v10, v6, v10

    .line 48
    iget v11, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    .line 50
    int-to-float v12, v11

    .line 52
    iget v13, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 53
    mul-float/2addr v12, v13

    .line 55
    add-float/2addr v12, v4

    .line 56
    div-float/2addr v12, v8

    .line 57
    add-float/2addr v12, v5

    .line 58
    float-to-int v12, v12

    .line 59
    sub-int v12, v6, v12

    .line 60
    int-to-float v11, v11

    .line 62
    mul-float/2addr v11, v13

    .line 63
    sub-float v11, v4, v11

    .line 64
    div-float/2addr v11, v8

    .line 66
    add-float/2addr v11, v5

    .line 67
    float-to-int v11, v11

    .line 68
    sub-int v11, v6, v11

    .line 69
    iget v14, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    .line 71
    int-to-float v15, v14

    .line 73
    mul-float/2addr v15, v13

    .line 74
    cmpg-float v15, v4, v15

    .line 75
    if-gez v15, :cond_1

    .line 77
    add-float/2addr v5, v4

    .line 79
    float-to-int v4, v5

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    int-to-float v15, v14

    .line 82
    mul-float/2addr v15, v13

    .line 83
    add-float/2addr v15, v4

    .line 84
    div-float/2addr v15, v8

    .line 85
    add-float/2addr v15, v5

    .line 86
    float-to-int v4, v15

    .line 87
    :goto_0
    sub-int/2addr v6, v4

    .line 88
    int-to-float v4, v6

    .line 89
    int-to-float v5, v14

    .line 90
    mul-float/2addr v5, v13

    .line 91
    add-float/2addr v5, v4

    .line 92
    float-to-int v4, v5

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    .line 95
    float-to-int v5, v3

    .line 97
    add-float v6, v4, v3

    .line 98
    float-to-int v10, v6

    .line 100
    iget v6, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    .line 101
    int-to-float v11, v6

    .line 103
    iget v12, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 104
    mul-float/2addr v11, v12

    .line 106
    sub-float v11, v4, v11

    .line 107
    div-float/2addr v11, v8

    .line 109
    add-float/2addr v11, v3

    .line 110
    float-to-int v11, v11

    .line 111
    int-to-float v6, v6

    .line 112
    mul-float/2addr v6, v12

    .line 113
    add-float/2addr v6, v4

    .line 114
    div-float/2addr v6, v8

    .line 115
    add-float/2addr v6, v3

    .line 116
    float-to-int v6, v6

    .line 117
    iget v13, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    .line 118
    int-to-float v14, v13

    .line 120
    mul-float/2addr v14, v12

    .line 121
    cmpg-float v14, v4, v14

    .line 122
    if-gez v14, :cond_3

    .line 124
    add-float/2addr v3, v4

    .line 126
    float-to-int v3, v3

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    int-to-float v14, v13

    .line 129
    mul-float/2addr v14, v12

    .line 130
    add-float/2addr v14, v4

    .line 131
    div-float/2addr v14, v8

    .line 132
    add-float/2addr v14, v3

    .line 133
    float-to-int v3, v14

    .line 134
    :goto_1
    move v4, v3

    .line 135
    int-to-float v3, v4

    .line 136
    int-to-float v13, v13

    .line 137
    mul-float/2addr v13, v12

    .line 138
    sub-float/2addr v3, v13

    .line 139
    float-to-int v3, v3

    .line 140
    move v12, v11

    .line 141
    move v11, v6

    .line 142
    move v6, v3

    .line 143
    move v3, v5

    .line 144
    :goto_2
    iget-object v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 145
    iget v13, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 147
    iget v14, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    .line 149
    div-float v15, v14, v8

    .line 151
    sub-float v15, v13, v15

    .line 153
    float-to-int v15, v15

    .line 155
    div-float/2addr v14, v8

    .line 156
    add-float/2addr v14, v13

    .line 157
    float-to-int v13, v14

    .line 158
    invoke-virtual {v5, v3, v15, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 162
    iget-object v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    .line 164
    const/4 v10, 0x0

    .line 166
    invoke-virtual {v1, v2, v10, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 170
    sget-object v3, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 172
    if-eq v2, v3, :cond_5

    .line 174
    sget-object v5, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 176
    if-ne v2, v5, :cond_4

    .line 178
    goto :goto_3

    .line 180
    :cond_4
    iget-boolean v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 181
    if-eqz v2, :cond_6

    .line 183
    const/16 v2, 0x32

    .line 185
    invoke-virtual {v0, v2, v9}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(IZ)V

    .line 187
    iput-boolean v9, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 190
    goto :goto_4

    .line 192
    :cond_5
    :goto_3
    iget-boolean v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 193
    if-nez v2, :cond_6

    .line 195
    iput-boolean v7, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 197
    const/16 v2, 0x64

    .line 199
    invoke-virtual {v0, v2, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(IZ)V

    .line 201
    iput-boolean v7, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 204
    :cond_6
    :goto_4
    iget-boolean v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 206
    if-eqz v2, :cond_8

    .line 208
    iget v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 210
    float-to-double v13, v2

    .line 212
    const-wide v15, 0x3fb999999999999aL    # 0.1

    .line 213
    cmpl-double v5, v13, v15

    .line 218
    if-lez v5, :cond_8

    .line 220
    iget-object v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 222
    if-ne v5, v3, :cond_7

    .line 224
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 226
    iget v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 228
    iget v4, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    .line 230
    int-to-float v5, v4

    .line 232
    iget v6, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 233
    invoke-static {v5, v6, v8, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 235
    move-result v5

    .line 238
    float-to-int v5, v5

    .line 239
    int-to-float v4, v4

    .line 240
    invoke-static {v4, v6, v8, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 241
    move-result v3

    .line 244
    float-to-int v3, v3

    .line 245
    invoke-virtual {v2, v12, v5, v11, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    iget-object v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 249
    iget-object v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 251
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 253
    invoke-virtual {v1, v2, v10, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    goto :goto_5

    .line 258
    :cond_7
    iget-object v3, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 259
    if-eqz v3, :cond_8

    .line 261
    const/4 v5, 0x0

    .line 263
    cmpl-float v2, v2, v5

    .line 264
    if-eqz v2, :cond_8

    .line 266
    iget v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 268
    iget v5, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    .line 270
    int-to-float v7, v5

    .line 272
    iget v9, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 273
    invoke-static {v7, v9, v8, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 275
    move-result v7

    .line 278
    float-to-int v7, v7

    .line 279
    int-to-float v5, v5

    .line 280
    invoke-static {v5, v9, v8, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 281
    move-result v2

    .line 284
    float-to-int v2, v2

    .line 285
    invoke-virtual {v3, v6, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    :cond_8
    :goto_5
    return-void
    .line 294
.end method

.method public final setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne p1, v0, :cond_3

    .line 7
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v4, :cond_0

    .line 11
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    if-ne v4, v5, :cond_4

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 17
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    .line 19
    sget-boolean v6, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 21
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 23
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    invoke-static {v5}, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    .line 29
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    move v4, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_0
    if-nez v4, :cond_2

    .line 38
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    :goto_1
    iput-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    iput-object v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 50
    if-eq p1, v4, :cond_8

    .line 52
    sget-object v5, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 54
    if-ne v4, v5, :cond_6

    .line 56
    if-ne p1, v0, :cond_6

    .line 58
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 60
    const v1, 0x3f95c28f    # 1.17f

    .line 62
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFZ)V

    .line 65
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 68
    if-eqz v0, :cond_5

    .line 70
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 72
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 78
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    if-eqz v0, :cond_7

    .line 85
    new-instance v0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;

    .line 87
    const-string/jumbo v2, "switch"

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v3, v0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 95
    goto :goto_3

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    .line 99
    const-wide/16 v1, 0x14

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 103
    goto :goto_3

    .line 106
    :cond_6
    if-ne v4, v0, :cond_7

    .line 107
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 109
    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFZ)V

    .line 113
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 116
    :cond_8
    return-void
    .line 118
.end method

.method public final startArrowAnimating(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    .line 12
    const/4 v2, 0x0

    .line 14
    aput v1, v0, v2

    .line 15
    if-eqz p2, :cond_1

    .line 17
    const/16 v2, 0xff

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 21
    aput v2, v0, v1

    .line 22
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 28
    int-to-long v1, p1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 34
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 41
    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;

    .line 43
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    return-void
    .line 56
.end method
