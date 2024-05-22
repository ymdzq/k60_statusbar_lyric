.class public Lcom/android/keyguard/widget/PasswordTextViewForPIN;
.super Lcom/android/keyguard/PasswordTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CHAR_ALPHA:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

.field public static final CHAR_SCALE:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

.field public static final CHAR_Y_OFFSET:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;


# instance fields
.field public final mDrawPaint:Landroid/graphics/Paint;

.field public final mFillPaint:Landroid/graphics/Paint;

.field public final mMaxYOffset:F

.field public mOrientation:I

.field public final mPasswordLength:I

.field public final mStrokeWidth:F

.field public final mTextChars:Ljava/util/ArrayList;

.field public mUiMode:I

.field public final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 2
    const-string v1, "char_y_offset"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->CHAR_Y_OFFSET:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 10
    new-instance v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 12
    const-string v1, "char_alpha"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->CHAR_ALPHA:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 20
    new-instance v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 22
    const-string v1, "char_scale"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->CHAR_SCALE:Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iput p3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mOrientation:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    iput p3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mUiMode:I

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 11
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 12
    sget-object p3, Lcom/android/systemui/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07042f    # @dimen/keyboard_password_dot_stroke_width '1.45dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mStrokeWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 16
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->getLockPasswordLength(I)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    .line 19
    iput p2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    const-string p1, "get password length = "

    const-string p3, "PasswordTextViewForPIN"

    .line 20
    invoke-static {p1, p2, p3}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initTextChars()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a6    # @dimen/keyguard_security_pin_entry_width '235.0dp'

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mWidth:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40e00000    # 7.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mMaxYOffset:F

    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initPaints()V

    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initCharPadding()V

    return-void

    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    throw p0
.end method


# virtual methods
.method public final append(C)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget v3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    .line 10
    if-le v1, v3, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 34
    add-int/lit8 v3, v1, -0x1

    .line 36
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 42
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    const-wide/16 v4, 0x0

    .line 46
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->startDotAlphaAnimation(FJ)V

    .line 48
    const v3, 0x3f4ccccd    # 0.8f

    .line 51
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->startDotScaleAnimation(FJ)V

    .line 54
    new-instance v3, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;

    .line 57
    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, p1, v4}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;-><init>(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;I)V

    .line 60
    iget-object v5, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    .line 63
    const-wide/16 v6, 0x32

    .line 65
    invoke-virtual {v5, v3, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    new-instance v3, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;

    .line 70
    invoke-direct {v3, p1, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState$1;-><init>(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;I)V

    .line 72
    const-wide/16 v6, 0x96

    .line 75
    invoke-virtual {v5, v3, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    move-result p1

    .line 86
    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

    .line 90
    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinViewController;->onTextChanged(I)V

    .line 94
    :cond_1
    return-void
    .line 97
.end method

.method public final deleteLastChar()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 8
    if-lez v0, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v2

    .line 17
    if-gt v0, v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 20
    const/4 v3, 0x1

    .line 22
    sub-int/2addr v0, v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 37
    const-wide/16 v5, 0x0

    .line 39
    invoke-virtual {v0, v3, v3, v5, v6}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->reset(ZZJ)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    move-result v0

    .line 47
    sub-int/2addr v0, v3

    .line 48
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

    .line 55
    if-eqz v0, :cond_1

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    move-result p0

    .line 64
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardPinViewController;->onTextChanged(I)V

    .line 65
    :cond_1
    return-void
    .line 68
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
    iget-object v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 8
    sub-int/2addr v1, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    move v2, v0

    .line 12
    :goto_0
    iget v3, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    .line 13
    if-ge v0, v3, :cond_1

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 19
    add-int/2addr v2, v3

    .line 21
    :cond_0
    add-int/2addr v2, v1

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    int-to-float p0, v2

    .line 26
    return p0
    .line 27
.end method

.method public final initCharPadding()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070e5b    # @dimen/password_char_padding '25.33dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    .line 19
    move-result-object v2

    .line 22
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 25
    sub-int/2addr v3, v2

    .line 27
    iget v2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mWidth:I

    .line 28
    mul-int/2addr v3, v1

    .line 30
    sub-int/2addr v2, v3

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    div-int/2addr v2, v1

    .line 34
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 39
    return-void
    .line 41
.end method

.method public final initPaints()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 4
    filled-new-array {v0, v1}, [Landroid/graphics/Paint;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x2

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    aget-object v3, v0, v2

    .line 15
    const/16 v4, 0x81

    .line 17
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 19
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 22
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 24
    iget v4, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mStrokeWidth:F

    .line 27
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    const-string/jumbo v4, "sans-serif-light"

    .line 32
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 45
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 52
    const v1, -0x4c000001

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 67
    const/4 v0, -0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    return-void
    .line 73
.end method

.method public final initTextChars()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    .line 22
    if-ge v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 26
    new-instance v2, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 28
    invoke-direct {v2, p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;-><init>(Lcom/android/keyguard/widget/PasswordTextViewForPIN;)V

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return-void
    .line 39
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initTextChars()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 7
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mOrientation:I

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mUiMode:I

    .line 13
    if-eq p1, v1, :cond_1

    .line 15
    :cond_0
    iput v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mOrientation:I

    .line 17
    iput p1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mUiMode:I

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initPaints()V

    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->initCharPadding()V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mPasswordLength:I

    .line 6
    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 16
    iget-object v1, v1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->mCharAnimTarget:Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharAnimTarget;

    .line 18
    filled-new-array {v1}, [Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharAnimTarget;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->getDrawingWidth()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 6
    and-int/lit8 v2, v1, 0x7

    .line 8
    const/4 v3, 0x3

    .line 10
    const/high16 v4, 0x40000000    # 2.0f

    .line 11
    if-ne v2, v3, :cond_1

    .line 13
    const/high16 v2, 0x800000

    .line 15
    and-int/2addr v1, v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mWidth:I

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 29
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    int-to-float v1, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 36
    move-result v0

    .line 39
    int-to-float v1, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mWidth:I

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 44
    int-to-float v1, v1

    .line 46
    div-float/2addr v0, v4

    .line 47
    :goto_0
    sub-float/2addr v1, v0

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    .line 55
    move-result-object v2

    .line 58
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 61
    move-result v3

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 65
    move-result v5

    .line 68
    sub-int/2addr v3, v5

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 70
    move-result v5

    .line 73
    sub-int/2addr v3, v5

    .line 74
    div-int/lit8 v3, v3, 0x2

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 77
    move-result v5

    .line 80
    add-int/2addr v5, v3

    .line 81
    int-to-float v3, v5

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 83
    move-result v5

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 87
    move-result v6

    .line 90
    iget v7, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mWidth:I

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 93
    move-result v8

    .line 96
    sub-int/2addr v7, v8

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 98
    move-result v8

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 102
    move-result v9

    .line 105
    sub-int/2addr v8, v9

    .line 106
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 107
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 110
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 112
    sub-int/2addr v5, v2

    .line 114
    int-to-float v2, v5

    .line 115
    div-float v5, v2, v4

    .line 116
    add-float/2addr v5, v1

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_2
    if-ge v1, v0, :cond_3

    .line 120
    iget-object v6, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v6

    .line 127
    check-cast v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    iget v7, v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->yOffset:F

    .line 136
    add-float/2addr v7, v3

    .line 138
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v7, v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    .line 142
    iget v8, v7, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 144
    div-int/lit8 v8, v8, 0x2

    .line 146
    int-to-float v8, v8

    .line 148
    iget v9, v7, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mStrokeWidth:F

    .line 149
    div-float/2addr v9, v4

    .line 151
    sub-float/2addr v8, v9

    .line 152
    iget v9, v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->scale:F

    .line 153
    mul-float/2addr v8, v9

    .line 155
    iget-object v9, v7, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    .line 156
    const/4 v10, 0x0

    .line 158
    invoke-virtual {p1, v10, v10, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget v8, v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->alpha:F

    .line 162
    cmpl-float v9, v8, v10

    .line 164
    if-lez v9, :cond_2

    .line 166
    iget-object v9, v7, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 168
    const/high16 v11, 0x437f0000    # 255.0f

    .line 170
    mul-float/2addr v8, v11

    .line 172
    float-to-int v8, v8

    .line 173
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    iget v8, v7, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 177
    div-int/lit8 v8, v8, 0x2

    .line 179
    int-to-float v8, v8

    .line 181
    iget v6, v6, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->scale:F

    .line 182
    mul-float/2addr v8, v6

    .line 184
    iget-object v6, v7, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mFillPaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p1, v10, v10, v8, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    iget v6, v7, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 193
    int-to-float v6, v6

    .line 195
    add-float/2addr v6, v2

    .line 196
    add-float/2addr v5, v6

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    goto :goto_2

    .line 200
    :cond_3
    return-void
    .line 201
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class p0, Lcom/android/keyguard/PasswordTextView;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public final reset(ZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 2
    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, v1, :cond_0

    .line 22
    iget-object v4, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    .line 30
    sub-int v5, v1, v3

    .line 32
    int-to-long v5, v5

    .line 34
    const-wide/16 v7, 0x32

    .line 35
    mul-long/2addr v5, v7

    .line 37
    add-long/2addr v5, v7

    .line 38
    invoke-virtual {v4, v2, p1, v5, v6}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->reset(ZZJ)V

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    move-result p1

    .line 50
    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

    .line 54
    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinViewController;->onTextChanged(I)V

    .line 58
    :cond_2
    return-void
    .line 61
.end method
