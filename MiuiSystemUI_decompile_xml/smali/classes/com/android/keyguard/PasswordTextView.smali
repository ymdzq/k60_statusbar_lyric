.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field public mCharPadding:I

.field public final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field public final mDotSize:I

.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mGravity:I

.field public mIsPinHinting:Z

.field public final mPM:Landroid/os/PowerManager;

.field public mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

.field public mShowPassword:Z

.field public mText:Ljava/lang/String;

.field public mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

.field public final mTextChars:Ljava/util/ArrayList;

.field public mTextHeightRaw:I

.field public mUsePinShapes:Z

.field public mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# direct methods
.method public static bridge synthetic -$$Nest$mgetTransformedText(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    const-string p3, ""

    .line 6
    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p4, 0x1

    .line 8
    iput-boolean p4, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mUsePinShapes:Z

    .line 10
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x13

    .line 11
    :try_start_0
    invoke-virtual {v1, v2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v3, 0x14

    .line 12
    invoke-virtual {v1, v3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 14
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    sget-object v1, Lcom/android/systemui/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x4

    .line 17
    :try_start_1
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    const/16 v1, 0x11

    .line 18
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070e5d    # @dimen/password_dot_size '12.36dp'

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const/4 v1, 0x3

    .line 20
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070e5b    # @dimen/password_char_padding '25.33dp'

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const/4 v1, 0x2

    .line 22
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    const/4 p4, -0x1

    .line 23
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 24
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p2, 0x81

    .line 26
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 27
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const p2, 0x10402a1    # @android:string/config_wallpaperManagerServiceName

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000e    # @android:interpolator/linear_out_slow_in

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000f    # @android:interpolator/fast_out_linear_in

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000d    # @android:interpolator/fast_out_slow_in

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 33
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    throw p0

    :catchall_1
    move-exception p0

    .line 37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw p0
.end method

.method private getTransformedText()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 22
    iget-object v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 24
    if-eqz v4, :cond_0

    .line 26
    iget-boolean v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 28
    if-nez v4, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    iget-char v3, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x2022

    .line 42
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    return-object v1
    .line 50
.end method


# virtual methods
.method public append(C)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    move-result v2

    .line 34
    if-le v2, v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    .line 39
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 50
    add-int/lit8 v3, v2, -0x1

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 58
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 62
    if-eqz p1, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/android/keyguard/PinShapeInput;->append()V

    .line 66
    :cond_1
    iget-object p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 69
    iget-boolean v3, p1, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 71
    const/4 v4, 0x1

    .line 73
    const/4 v5, 0x0

    .line 74
    if-nez v3, :cond_3

    .line 75
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 77
    if-eqz v6, :cond_2

    .line 79
    iget-boolean v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 81
    if-nez v6, :cond_3

    .line 83
    :cond_2
    move v6, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v6, v5

    .line 87
    :goto_1
    if-eqz v3, :cond_5

    .line 88
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 90
    if-eqz v3, :cond_4

    .line 92
    iget-boolean v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 94
    if-nez v3, :cond_5

    .line 96
    :cond_4
    move v3, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move v3, v5

    .line 100
    :goto_2
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 101
    if-eqz v7, :cond_7

    .line 103
    iget-boolean v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 105
    if-nez v7, :cond_6

    .line 107
    goto :goto_3

    .line 109
    :cond_6
    move v7, v5

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    :goto_3
    move v7, v4

    .line 112
    :goto_4
    const-wide/16 v8, 0x0

    .line 113
    if-eqz v6, :cond_8

    .line 115
    invoke-virtual {v0, v8, v9}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 117
    :cond_8
    const/4 v6, 0x2

    .line 120
    const/high16 v10, 0x43200000    # 160.0f

    .line 121
    const/high16 v11, 0x3f800000    # 1.0f

    .line 123
    if-eqz v3, :cond_9

    .line 125
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 127
    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 129
    new-array v3, v6, [F

    .line 132
    iget v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 134
    aput v12, v3, v5

    .line 136
    aput v11, v3, v4

    .line 138
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 140
    move-result-object v3

    .line 143
    iput-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 144
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 146
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 151
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 153
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 158
    iget-object v12, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 160
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 165
    iget v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 167
    sub-float v12, v11, v12

    .line 169
    mul-float/2addr v12, v10

    .line 171
    float-to-long v12, v12

    .line 172
    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 176
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 178
    iput-boolean v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 181
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 183
    if-nez v3, :cond_9

    .line 185
    new-array v3, v6, [F

    .line 187
    fill-array-data v3, :array_0

    .line 189
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 192
    move-result-object v3

    .line 195
    iput-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 196
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 198
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 203
    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 205
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 210
    iget-object v12, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 212
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 217
    const-wide/16 v12, 0xa0

    .line 219
    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 224
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 226
    :cond_9
    if-eqz v7, :cond_a

    .line 229
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 231
    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 233
    new-array v3, v6, [F

    .line 236
    iget v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 238
    aput v7, v3, v5

    .line 240
    aput v11, v3, v4

    .line 242
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 244
    move-result-object v3

    .line 247
    iput-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 250
    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 255
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 257
    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 262
    iget v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 264
    sub-float/2addr v11, v7

    .line 266
    mul-float/2addr v11, v10

    .line 267
    float-to-long v10, v11

    .line 268
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 272
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    iput-boolean v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 277
    :cond_a
    iget-boolean p1, p1, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 279
    if-eqz p1, :cond_b

    .line 281
    iget-object p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 283
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 285
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 287
    iput-boolean v5, v0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 290
    const-wide/16 v10, 0x514

    .line 292
    invoke-virtual {p1, v3, v10, v11}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    iput-boolean v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 297
    :cond_b
    if-le v2, v4, :cond_d

    .line 299
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 301
    sub-int/2addr v2, v6

    .line 303
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object p1

    .line 307
    check-cast p1, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 308
    iget-boolean v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 310
    if-eqz v0, :cond_d

    .line 312
    iget-object v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 314
    iget-object v2, p1, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 316
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 318
    iput-boolean v5, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 321
    iget-object v3, p1, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 323
    if-eqz v3, :cond_c

    .line 325
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 327
    move-result-wide v6

    .line 330
    iget-object v3, p1, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 331
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 333
    move-result-wide v8

    .line 336
    sub-long/2addr v6, v8

    .line 337
    const-wide/16 v8, 0x64

    .line 338
    add-long/2addr v6, v8

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    iput-boolean v5, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 344
    invoke-virtual {v0, v2, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    iput-boolean v4, p1, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 349
    goto :goto_5

    .line 351
    :cond_c
    invoke-virtual {p1, v8, v9}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 352
    const-wide/16 v2, 0x1e

    .line 355
    invoke-virtual {p1, v2, v3}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 357
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 360
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 363
    move-result p1

    .line 366
    invoke-virtual {p0, p1, v5, v4, v1}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 367
    return-void

    .line 370
    nop

    .line 371
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 372
.end method

.method public deleteLastChar()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v1

    .line 11
    if-lez v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 14
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v0, v3

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 31
    const-wide/16 v5, 0x0

    .line 33
    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    move-result v0

    .line 41
    sub-int/2addr v0, v3

    .line 42
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 46
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/android/keyguard/PinShapeInput;->delete()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 53
    return-void
    .line 56
.end method

.method public getCharBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 2
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13
    mul-float/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 26
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    const-string v3, "0"

    .line 30
    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 32
    return-object v0
    .line 35
.end method

.method public getDrawingWidth()F
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 11
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 14
    sub-int/2addr v2, v1

    .line 16
    const/4 v1, 0x0

    .line 17
    move v3, v1

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    int-to-float v3, v3

    .line 31
    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 32
    int-to-float v5, v5

    .line 34
    iget v6, v4, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 35
    mul-float/2addr v5, v6

    .line 37
    add-float/2addr v5, v3

    .line 38
    float-to-int v3, v5

    .line 39
    :cond_0
    int-to-float v3, v3

    .line 40
    int-to-float v5, v2

    .line 41
    iget v4, v4, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 42
    mul-float/2addr v5, v4

    .line 44
    add-float/2addr v5, v3

    .line 45
    float-to-int v3, v5

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    int-to-float p0, v3

    .line 50
    return p0
    .line 51
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f0b00fe    # @integer/scaled_password_text_size '28'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 17
    return-void
    .line 19
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lcom/android/keyguard/PasswordTextView;->mUsePinShapes:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    .line 14
    move-result v2

    .line 17
    iget v3, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 18
    and-int/lit8 v4, v3, 0x7

    .line 20
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    const/high16 v8, 0x40000000    # 2.0f

    .line 25
    if-ne v4, v5, :cond_2

    .line 27
    const/high16 v4, 0x800000

    .line 29
    and-int/2addr v3, v4

    .line 31
    if-eqz v3, :cond_1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 34
    move-result v3

    .line 37
    if-ne v3, v7, :cond_1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 40
    move-result v3

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 44
    move-result v4

    .line 47
    sub-int/2addr v3, v4

    .line 48
    int-to-float v3, v3

    .line 49
    sub-float/2addr v3, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 52
    move-result v2

    .line 55
    int-to-float v3, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 58
    move-result v3

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 62
    move-result v4

    .line 65
    sub-int/2addr v3, v4

    .line 66
    int-to-float v3, v3

    .line 67
    sub-float/2addr v3, v2

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 69
    move-result v4

    .line 72
    int-to-float v4, v4

    .line 73
    div-float/2addr v4, v8

    .line 74
    div-float/2addr v2, v8

    .line 75
    sub-float v2, v4, v2

    .line 76
    cmpl-float v4, v2, v6

    .line 78
    if-lez v4, :cond_3

    .line 80
    move v3, v2

    .line 82
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object v4

    .line 92
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 93
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 95
    sub-int/2addr v5, v9

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 98
    move-result v9

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 102
    move-result v10

    .line 105
    sub-int/2addr v9, v10

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 107
    move-result v10

    .line 110
    sub-int/2addr v9, v10

    .line 111
    div-int/lit8 v9, v9, 0x2

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 114
    move-result v10

    .line 117
    add-int/2addr v10, v9

    .line 118
    int-to-float v9, v10

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 120
    move-result v10

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 124
    move-result v11

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 128
    move-result v12

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 132
    move-result v13

    .line 135
    sub-int/2addr v12, v13

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 137
    move-result v13

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 141
    move-result v14

    .line 144
    sub-int/2addr v13, v14

    .line 145
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 146
    iget v10, v4, Landroid/graphics/Rect;->right:I

    .line 149
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 151
    sub-int/2addr v10, v4

    .line 153
    int-to-float v4, v10

    .line 154
    const/4 v10, 0x0

    .line 155
    :goto_1
    if-ge v10, v2, :cond_8

    .line 156
    iget-object v11, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v11

    .line 163
    check-cast v11, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 164
    iget v12, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 166
    cmpl-float v13, v12, v6

    .line 168
    if-lez v13, :cond_4

    .line 170
    move v13, v7

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    const/4 v13, 0x0

    .line 174
    :goto_2
    iget v14, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 175
    cmpl-float v14, v14, v6

    .line 177
    if-lez v14, :cond_5

    .line 179
    goto :goto_3

    .line 181
    :cond_5
    const/4 v7, 0x0

    .line 182
    :goto_3
    iget v14, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 183
    mul-float/2addr v14, v4

    .line 185
    iget-object v15, v11, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 186
    if-eqz v13, :cond_6

    .line 188
    int-to-float v13, v5

    .line 190
    invoke-static {v13, v8, v12, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 191
    move-result v12

    .line 194
    iget v6, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 195
    mul-float/2addr v13, v6

    .line 197
    const v6, 0x3f4ccccd    # 0.8f

    .line 198
    mul-float/2addr v13, v6

    .line 201
    add-float/2addr v13, v12

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    div-float v6, v14, v8

    .line 206
    add-float/2addr v6, v3

    .line 208
    invoke-virtual {v1, v6, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    iget v6, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 212
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 214
    iget-char v6, v11, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 217
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 219
    move-result-object v6

    .line 222
    iget-object v12, v15, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 223
    const/4 v13, 0x0

    .line 225
    invoke-virtual {v1, v6, v13, v13, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    :cond_6
    if-eqz v7, :cond_7

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    div-float v6, v14, v8

    .line 237
    add-float/2addr v6, v3

    .line 239
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget v6, v15, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 243
    div-int/lit8 v6, v6, 0x2

    .line 245
    int-to-float v6, v6

    .line 247
    iget v7, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 248
    mul-float/2addr v6, v7

    .line 250
    iget-object v7, v15, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 251
    const/4 v12, 0x0

    .line 253
    invoke-virtual {v1, v12, v12, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 257
    goto :goto_4

    .line 260
    :cond_7
    const/4 v12, 0x0

    .line 261
    :goto_4
    iget v6, v15, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 262
    int-to-float v6, v6

    .line 264
    iget v7, v11, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 265
    mul-float/2addr v6, v7

    .line 267
    add-float/2addr v6, v14

    .line 268
    add-float/2addr v3, v6

    .line 269
    add-int/lit8 v10, v10, 0x1

    .line 270
    const/4 v7, 0x1

    .line 272
    move v6, v12

    .line 273
    goto :goto_1

    .line 274
    :cond_8
    return-void
    .line 275
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p0, Landroid/widget/EditText;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    const/4 p0, 0x1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/EditText;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 15
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 25
    const/16 p0, 0x10

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 30
    return-void
    .line 33
.end method

.method public reset(ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    iput-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 10
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v2

    .line 17
    add-int/lit8 v3, v2, -0x1

    .line 18
    div-int/lit8 v4, v3, 0x2

    .line 20
    const/4 v5, 0x0

    .line 22
    move v6, v5

    .line 23
    :goto_0
    if-ge v6, v2, :cond_2

    .line 24
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v7

    .line 31
    check-cast v7, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 32
    if-eqz p1, :cond_1

    .line 34
    if-gt v6, v4, :cond_0

    .line 36
    mul-int/lit8 v8, v6, 0x2

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    sub-int v8, v6, v4

    .line 41
    add-int/lit8 v8, v8, -0x1

    .line 43
    mul-int/lit8 v8, v8, 0x2

    .line 45
    sub-int v8, v3, v8

    .line 47
    :goto_1
    int-to-long v8, v8

    .line 49
    const-wide/16 v10, 0x28

    .line 50
    mul-long/2addr v8, v10

    .line 52
    const-wide/16 v12, 0xc8

    .line 53
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 55
    move-result-wide v8

    .line 58
    int-to-long v14, v3

    .line 59
    mul-long/2addr v14, v10

    .line 60
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 61
    move-result-wide v10

    .line 64
    const-wide/16 v12, 0xa0

    .line 65
    add-long/2addr v10, v12

    .line 67
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 68
    iget-object v8, v7, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 71
    iget-object v9, v7, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 73
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    iput-boolean v5, v7, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 78
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    if-nez p1, :cond_3

    .line 83
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 91
    :goto_2
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 94
    if-eqz v2, :cond_4

    .line 96
    invoke-interface {v2}, Lcom/android/keyguard/PinShapeInput;->reset()V

    .line 98
    :cond_4
    if-eqz p2, :cond_5

    .line 101
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 103
    move-result v2

    .line 106
    invoke-virtual {v0, v5, v2, v5, v1}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 107
    :cond_5
    return-void
    .line 110
.end method

.method public final sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    :cond_0
    const/16 v0, 0x10

    .line 32
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 38
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 41
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 44
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    .line 50
    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p2

    .line 57
    if-nez p2, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 60
    move-result-object p2

    .line 63
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    const/4 p1, 0x1

    .line 67
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 71
    :cond_2
    return-void
    .line 74
.end method

.method public setIsPinHinting(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView;->mIsPinHinting:Z

    .line 6
    if-ne v1, p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mIsPinHinting:Z

    .line 11
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Lcom/android/keyguard/PinShapeInput;->getView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 20
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    move-result-object p1

    .line 32
    const v0, 0x7f0d010a    # @layout/keyguard_pin_shape_hinting_view 'res/layout/keyguard_pin_shape_hinting_view.xml'

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/keyguard/PinShapeInput;

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    move-result-object p1

    .line 50
    const v0, 0x7f0d010b    # @layout/keyguard_pin_shape_non_hinting_view 'res/layout/keyguard_pin_shape_non_hinting_view.xml'

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/keyguard/PinShapeInput;

    .line 58
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPinShapeInput:Lcom/android/keyguard/PinShapeInput;

    .line 62
    invoke-interface {p1}, Lcom/android/keyguard/PinShapeInput;->getView()Landroid/view/View;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    return-void
    .line 71
.end method

.method public setShowPassword(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 2
    return-void
    .line 4
.end method

.method public setUsePinShapes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mUsePinShapes:Z

    .line 2
    return-void
    .line 4
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 2
    return-void
    .line 4
.end method

.method public final userActivity()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-interface {p0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
