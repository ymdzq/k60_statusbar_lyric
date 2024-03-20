.class public Lcom/android/systemui/fsgesture/NavStubDemoView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public curActivity:Landroid/app/Activity;

.field public demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field public demoType:Ljava/lang/String;

.field public fullyShowStep:I

.field public isFromPro:Z

.field public mAppBgView:Landroid/view/View;

.field public mAppIcon:Landroid/graphics/Bitmap;

.field public mAppNoteImg:Landroid/view/View;

.field public mBgView:Landroid/view/View;

.field public mBottomDec:I

.field public mCurAlpha:F

.field public mCurScale:F

.field public mCurrentY:F

.field public mDelta:F

.field public mDestPivotX:I

.field public mDestPivotY:I

.field public mDownNo:I

.field public mDownX:F

.field public mDragBitmap:Landroid/graphics/Bitmap;

.field public mDrawBmp:Landroid/graphics/Bitmap;

.field public mFakeBitmap:Landroid/graphics/Bitmap;

.field public mFollowTailX:F

.field public mFollowTailY:F

.field public final mFrameHandler:Landroid/os/Handler;

.field public mHomeIconImg:Landroid/widget/LinearLayout;

.field public mIsAppToHome:Z

.field public mIsAppToRecents:Z

.field public mIsInFsgAnim:Z

.field public mLastDownNo:I

.field public final mModeSrcIn:Landroid/graphics/Xfermode;

.field public mPaint:Landroid/graphics/Paint;

.field public mPivotLocX:I

.field public mPivotLocY:I

.field public mRecentsAnimator:Landroid/animation/ValueAnimator;

.field public mRecentsBgView:Landroid/view/View;

.field public mRecentsCardContainer:Landroid/widget/LinearLayout;

.field public mRecentsFirstCardBound:Landroid/graphics/Rect;

.field public mRecentsFirstCardIconView:Landroid/view/View;

.field public mShowHeight:I

.field public final mShowRect:Landroid/graphics/Rect;

.field public mShowWidth:I

.field public mStateMode:I

.field public final mTailCatcherTask:Lcom/android/systemui/fsgesture/NavStubDemoView$1;

.field public mXScale:F

.field public mYScale:F

.field public swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    .line 8
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    .line 9
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 10
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string/jumbo v0, "window"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    .line 12
    invoke-interface {p4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    iget p4, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 14
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    const p3, 0x10001

    .line 15
    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 16
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 p4, 0x1

    .line 17
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 18
    fill-array-data p3, :array_0

    const-string/jumbo p4, "scale"

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/16 p4, 0xff

    .line 19
    filled-new-array {p2, p4}, [I

    move-result-object p4

    const-string v0, "alpha"

    invoke-static {v0, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 20
    filled-new-array {p3, p4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 21
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p4, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    iget-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    iget-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f080aee    # @drawable/app_note 'res/drawable-440dpi/app_note.webp'

    invoke-static {p3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 25
    iget p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float p4, p4

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p4, v0

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 26
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 27
    iget-object p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p4, p2, p2, v0, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 28
    invoke-virtual {p3, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 29
    iget-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 30
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz p3, :cond_0

    .line 31
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 34
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 36
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v4, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 41
    invoke-virtual {p4, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08169a    # @drawable/note_icon 'res/drawable-440dpi/note_icon.png'

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f866666    # 1.05f
    .end array-data
.end method


# virtual methods
.method public final finalization()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 11
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 13
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 19
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 22
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 24
    const/16 v2, 0xff

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    const v1, 0x10001

    .line 31
    iput v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 34
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    move-result-object v0

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 72
    const/high16 v1, 0x41a00000    # 20.0f

    .line 74
    mul-float/2addr v0, v1

    .line 76
    float-to-int v0, v0

    .line 77
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    const/4 v2, -0x1

    .line 80
    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v0, 0xc

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 95
    if-eqz p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
    .line 103
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 5
    if-eqz v1, :cond_2

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 9
    const/4 v9, 0x0

    .line 11
    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 17
    int-to-float v1, v1

    .line 19
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 20
    int-to-float v2, v2

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 26
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 28
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 31
    neg-int v1, v1

    .line 33
    int-to-float v1, v1

    .line 34
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 35
    neg-int v2, v2

    .line 37
    int-to-float v2, v2

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 42
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 44
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 46
    div-int/lit8 v4, v3, 0x2

    .line 48
    sub-int/2addr v2, v4

    .line 50
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 51
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 53
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 55
    sub-int/2addr v4, v5

    .line 57
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 58
    add-int/2addr v2, v3

    .line 60
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 61
    add-int v2, v4, v5

    .line 63
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    int-to-float v1, v4

    .line 67
    int-to-float v2, v5

    .line 68
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 69
    mul-float/2addr v2, v3

    .line 71
    add-float/2addr v2, v1

    .line 72
    float-to-int v1, v2

    .line 73
    iget-boolean v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 74
    if-eqz v2, :cond_0

    .line 76
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    .line 78
    add-int/2addr v1, v4

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 81
    const/16 v3, 0xff

    .line 83
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 93
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 95
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 100
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 102
    int-to-float v3, v3

    .line 104
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 105
    int-to-float v4, v4

    .line 107
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 108
    int-to-float v5, v2

    .line 110
    int-to-float v7, v1

    .line 111
    const/4 v6, 0x0

    .line 112
    move-object v1, p1

    .line 113
    move v2, v3

    .line 114
    move v3, v4

    .line 115
    move v4, v5

    .line 116
    move v5, v7

    .line 117
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 118
    move-result v10

    .line 121
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 122
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 124
    int-to-float v2, v2

    .line 126
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 127
    int-to-float v3, v3

    .line 129
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 130
    int-to-float v4, v1

    .line 132
    const/high16 v6, 0x42480000    # 50.0f

    .line 133
    const/high16 v8, 0x42480000    # 50.0f

    .line 135
    iget-object v11, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 137
    move-object v1, p1

    .line 139
    move v7, v8

    .line 140
    move-object v8, v11

    .line 141
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    .line 147
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 154
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {p1, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 163
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 176
    int-to-float v1, v1

    .line 178
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 179
    int-to-float v2, v2

    .line 181
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    .line 185
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    .line 187
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 189
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 192
    neg-int v1, v1

    .line 194
    int-to-float v1, v1

    .line 195
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 196
    neg-int v2, v2

    .line 198
    int-to-float v2, v2

    .line 199
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 203
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 205
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 207
    div-int/lit8 v4, v3, 0x2

    .line 209
    sub-int/2addr v2, v4

    .line 211
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 212
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 214
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 216
    div-int/lit8 v6, v5, 0x2

    .line 218
    sub-int/2addr v4, v6

    .line 220
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 221
    add-int/2addr v2, v3

    .line 223
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 224
    add-int/2addr v4, v5

    .line 226
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 227
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 229
    const/high16 v2, 0x3f800000    # 1.0f

    .line 231
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 233
    sub-float/2addr v2, v3

    .line 235
    const/high16 v3, 0x437f0000    # 255.0f

    .line 236
    mul-float/2addr v2, v3

    .line 238
    float-to-int v2, v2

    .line 239
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 243
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 245
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 247
    invoke-virtual {p1, v1, v9, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 252
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 254
    mul-float/2addr v2, v3

    .line 256
    float-to-int v2, v2

    .line 257
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 261
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 265
    invoke-virtual {p1, v1, v9, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    :cond_2
    :goto_0
    return-void
    .line 273
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 15
    add-int/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 18
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 20
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    .line 22
    if-ne v0, v3, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 27
    move-result v0

    .line 30
    if-ne v2, v0, :cond_3

    .line 31
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 33
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    .line 35
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 37
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    move-result v0

    .line 46
    const/4 v3, 0x2

    .line 47
    const v4, 0x10001

    .line 48
    if-eqz v0, :cond_15

    .line 51
    const v5, 0x10002

    .line 53
    if-eq v0, v2, :cond_9

    .line 56
    if-eq v0, v3, :cond_5

    .line 58
    const/4 v1, 0x3

    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    goto/16 :goto_4

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    .line 65
    goto/16 :goto_4

    .line 68
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 70
    move-result v0

    .line 73
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    .line 74
    add-float/2addr v0, v1

    .line 76
    const/high16 v1, 0x40000000    # 2.0f

    .line 77
    div-float/2addr v0, v1

    .line 79
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    .line 80
    add-float/2addr v0, v1

    .line 82
    float-to-int v0, v0

    .line 83
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 84
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 86
    int-to-float v0, v0

    .line 88
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 89
    const/high16 v2, 0x40400000    # 3.0f

    .line 91
    cmpl-float v3, v2, v0

    .line 93
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 95
    const/high16 v8, 0x3f800000    # 1.0f

    .line 97
    if-nez v3, :cond_6

    .line 99
    goto :goto_0

    .line 101
    :cond_6
    sub-float/2addr v1, v0

    .line 102
    sub-float v3, v2, v0

    .line 103
    div-float/2addr v1, v3

    .line 105
    sub-float v1, v8, v1

    .line 106
    float-to-double v9, v1

    .line 108
    float-to-double v11, v2

    .line 109
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 110
    move-result-wide v9

    .line 113
    sub-double v9, v6, v9

    .line 114
    double-to-float v1, v9

    .line 116
    :goto_0
    const/high16 v3, 0x43de0000    # 444.0f

    .line 117
    mul-float/2addr v1, v3

    .line 119
    sub-float/2addr v0, v1

    .line 120
    float-to-int v0, v0

    .line 121
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 122
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 124
    if-ne v0, v4, :cond_7

    .line 126
    iput v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    const/4 v1, -0x1

    .line 139
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 146
    const/16 v1, 0x8

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 163
    const/4 v1, 0x4

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_7
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 169
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 171
    int-to-float v1, v1

    .line 173
    cmpl-float v3, v2, v1

    .line 174
    if-nez v3, :cond_8

    .line 176
    goto :goto_1

    .line 178
    :cond_8
    sub-float/2addr v0, v1

    .line 179
    sub-float v1, v2, v1

    .line 180
    div-float/2addr v0, v1

    .line 182
    sub-float v0, v8, v0

    .line 183
    float-to-double v0, v0

    .line 185
    float-to-double v2, v2

    .line 186
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 187
    move-result-wide v0

    .line 190
    sub-double/2addr v6, v0

    .line 191
    double-to-float v0, v6

    .line 192
    :goto_1
    const v1, 0x3ec51eb8    # 0.385f

    .line 193
    mul-float/2addr v0, v1

    .line 196
    sub-float/2addr v8, v0

    .line 197
    iput v8, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 200
    goto/16 :goto_4

    .line 203
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 210
    const/4 v4, 0x0

    .line 212
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 216
    if-ne v0, v5, :cond_a

    .line 218
    move v4, v2

    .line 220
    goto :goto_2

    .line 221
    :cond_a
    move v4, v1

    .line 222
    :goto_2
    const v5, 0x10003

    .line 223
    if-ne v0, v5, :cond_b

    .line 226
    move v1, v2

    .line 228
    :cond_b
    if-nez v4, :cond_d

    .line 229
    if-eqz v1, :cond_c

    .line 231
    goto :goto_3

    .line 233
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    .line 234
    goto/16 :goto_4

    .line 237
    :cond_d
    :goto_3
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 239
    int-to-float v0, v0

    .line 241
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 242
    sub-float/2addr v0, v1

    .line 244
    const/high16 v1, 0x41a00000    # 20.0f

    .line 245
    cmpl-float v1, v0, v1

    .line 247
    if-lez v1, :cond_e

    .line 249
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    .line 254
    goto/16 :goto_4

    .line 257
    :cond_e
    const/high16 v1, -0x3e600000    # -20.0f

    .line 259
    cmpg-float v0, v0, v1

    .line 261
    const-string v1, "DEMO_FULLY_SHOW"

    .line 263
    if-gez v0, :cond_11

    .line 265
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v0

    .line 272
    if-eqz v0, :cond_f

    .line 273
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    .line 275
    if-ne v0, v2, :cond_f

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    .line 279
    goto :goto_4

    .line 282
    :cond_f
    const-string v0, "DEMO_TO_HOME"

    .line 283
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    move-result v0

    .line 290
    if-eqz v0, :cond_10

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    .line 293
    goto :goto_4

    .line 296
    :cond_10
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    .line 300
    goto :goto_4

    .line 303
    :cond_11
    if-eqz v4, :cond_12

    .line 304
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    .line 309
    goto :goto_4

    .line 312
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v0

    .line 318
    if-eqz v0, :cond_13

    .line 319
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    .line 321
    if-ne v0, v3, :cond_13

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    .line 325
    goto :goto_4

    .line 328
    :cond_13
    const-string v0, "DEMO_TO_RECENTTASK"

    .line 329
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    move-result v0

    .line 336
    if-eqz v0, :cond_14

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    .line 339
    goto :goto_4

    .line 342
    :cond_14
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    .line 346
    goto :goto_4

    .line 349
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 350
    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 355
    move-result v0

    .line 358
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    .line 359
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 361
    div-int/2addr v2, v3

    .line 363
    int-to-float v3, v2

    .line 364
    sub-float v0, v3, v0

    .line 365
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    .line 367
    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 369
    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    .line 371
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 373
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 375
    int-to-float v0, v0

    .line 377
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 378
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 380
    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 382
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 384
    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 386
    :goto_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 388
    move-result p0

    .line 391
    return p0
    .line 392
.end method

.method public setAppBgView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public setAppNoteImg(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public setBgView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public setCurActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    .line 2
    return-void
    .line 4
.end method

.method public setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 2
    return-void
    .line 4
.end method

.method public setDemoType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setDestPivot(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    .line 2
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    .line 4
    return-void
    .line 6
.end method

.method public setFullyShowStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    .line 2
    return-void
    .line 4
.end method

.method public setHomeIconImg(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    .line 2
    return-void
    .line 4
.end method

.method public setIsFromPro(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    .line 2
    return-void
    .line 4
.end method

.method public setRecentsBgView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public setRecentsCardContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 2
    return-void
    .line 4
.end method

.method public setRecentsFirstCardBound(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 2
    return-void
    .line 4
.end method

.method public setRecentsFirstCardIconView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 2
    return-void
    .line 4
.end method

.method public final startCancelAnim()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 6
    aput v3, v1, v2

    .line 8
    const/4 v2, 0x1

    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    aput v3, v1, v2

    .line 13
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v1

    .line 18
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 19
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 21
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 27
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 29
    new-instance v4, Lcom/android/systemui/fsgesture/NavStubDemoView$8;

    .line 31
    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/fsgesture/NavStubDemoView$8;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V

    .line 33
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 39
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    const-wide/16 v2, 0x12c

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    return-void
    .line 56
.end method

.method public final startRecentTaskAnim()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 2
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    const v3, 0x7f0710d7    # @dimen/status_bar_height '@android:dimen/text_size_menu_header_material'

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    sub-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 27
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 30
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 34
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    mul-float/2addr v1, v3

    .line 41
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 42
    int-to-float v3, v3

    .line 44
    div-float/2addr v1, v3

    .line 45
    const/4 v3, 0x2

    .line 46
    new-array v4, v3, [F

    .line 47
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 49
    aput v5, v4, v2

    .line 51
    aput v1, v4, v0

    .line 53
    const-string/jumbo v2, "scale"

    .line 55
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 58
    move-result-object v2

    .line 61
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 62
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 64
    int-to-float v5, v5

    .line 66
    mul-float/2addr v4, v5

    .line 67
    float-to-int v4, v4

    .line 68
    iget-object v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 71
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    div-float/2addr v5, v1

    .line 76
    float-to-int v1, v5

    .line 77
    filled-new-array {v4, v1}, [I

    .line 78
    move-result-object v1

    .line 81
    const-string v4, "bottomDec"

    .line 82
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 84
    move-result-object v1

    .line 87
    filled-new-array {v2, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 88
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 92
    move-result-object v1

    .line 95
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 96
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 104
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 106
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 112
    iget v8, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 114
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 118
    move-result v2

    .line 121
    div-int/2addr v2, v3

    .line 122
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 123
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 125
    add-int/2addr v2, v5

    .line 127
    int-to-float v7, v2

    .line 128
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 129
    move-result v2

    .line 132
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 133
    mul-int/2addr v2, v4

    .line 135
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 136
    div-int/2addr v2, v4

    .line 138
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsFirstCardBound:Landroid/graphics/Rect;

    .line 139
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 141
    add-int/2addr v2, v4

    .line 143
    int-to-float v9, v2

    .line 144
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$11;

    .line 145
    move-object v4, v2

    .line 147
    move-object v5, p0

    .line 148
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/fsgesture/NavStubDemoView$11;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    const-wide/16 v4, 0x12c

    .line 155
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    new-array v2, v3, [F

    .line 160
    fill-array-data v2, :array_0

    .line 162
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 165
    move-result-object v2

    .line 168
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 169
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 171
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    .line 177
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 179
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 188
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 190
    filled-new-array {v1, v2}, [Landroid/animation/Animator;

    .line 193
    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 197
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 200
    return-void

    .line 203
    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
    .line 204
.end method

.method public final startToHomeAnim()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    mul-float/2addr v1, v2

    .line 14
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 15
    int-to-float v3, v3

    .line 17
    div-float/2addr v1, v3

    .line 18
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    mul-float/2addr v3, v2

    .line 26
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 27
    int-to-float v4, v4

    .line 29
    div-float/2addr v3, v4

    .line 30
    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 31
    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 33
    iget v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 35
    int-to-float v6, v6

    .line 37
    iget v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 38
    int-to-float v7, v7

    .line 40
    const/high16 v8, 0x40000000    # 2.0f

    .line 41
    invoke-static {v7, v4, v8, v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 43
    move-result v4

    .line 46
    float-to-int v4, v4

    .line 47
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 48
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50
    new-instance v7, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 53
    const/4 v9, 0x0

    .line 55
    invoke-direct {v7, p0, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 56
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    const/4 v7, 0x2

    .line 62
    new-array v10, v7, [F

    .line 63
    iget v11, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 65
    aput v11, v10, v9

    .line 67
    aput v3, v10, v0

    .line 69
    const-string/jumbo v3, "xScale"

    .line 71
    invoke-static {v3, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 74
    move-result-object v3

    .line 77
    iget v10, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    .line 78
    filled-new-array {v5, v10}, [I

    .line 80
    move-result-object v5

    .line 83
    const-string/jumbo v10, "xPivot"

    .line 84
    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 87
    move-result-object v5

    .line 90
    filled-new-array {v3, v5}, [Landroid/animation/PropertyValuesHolder;

    .line 91
    move-result-object v3

    .line 94
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 95
    move-result-object v3

    .line 98
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 99
    const/high16 v10, 0x3fc00000    # 1.5f

    .line 101
    invoke-direct {v5, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 103
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    new-instance v5, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    .line 109
    invoke-direct {v5, p0, v7}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 111
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    const-wide/16 v10, 0x12c

    .line 117
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    new-array v5, v7, [F

    .line 122
    iget v12, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 124
    aput v12, v5, v9

    .line 126
    aput v1, v5, v0

    .line 128
    const-string/jumbo v0, "yScale"

    .line 130
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 133
    move-result-object v0

    .line 136
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    .line 137
    filled-new-array {v4, v1}, [I

    .line 139
    move-result-object v1

    .line 142
    const-string/jumbo v4, "yPivot"

    .line 143
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 146
    move-result-object v1

    .line 149
    filled-new-array {v0, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 150
    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 154
    move-result-object v0

    .line 157
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 158
    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    .line 166
    const/4 v4, 0x3

    .line 168
    invoke-direct {v1, p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    new-array v1, v7, [F

    .line 178
    fill-array-data v1, :array_0

    .line 180
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 183
    move-result-object v1

    .line 186
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 187
    invoke-direct {v4, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 189
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    .line 195
    const/4 v4, 0x4

    .line 197
    invoke-direct {v2, p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 198
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 201
    const-wide/16 v4, 0xd2

    .line 204
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 206
    const-wide/16 v4, 0x28

    .line 209
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 211
    new-array v2, v7, [F

    .line 214
    fill-array-data v2, :array_1

    .line 216
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 219
    move-result-object v2

    .line 222
    new-instance v4, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    .line 223
    const/4 v5, 0x5

    .line 225
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V

    .line 226
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    filled-new-array {v2, v0, v3, v1}, [Landroid/animation/Animator;

    .line 235
    move-result-object p0

    .line 238
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 239
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 242
    return-void

    .line 245
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 246
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 254
.end method
