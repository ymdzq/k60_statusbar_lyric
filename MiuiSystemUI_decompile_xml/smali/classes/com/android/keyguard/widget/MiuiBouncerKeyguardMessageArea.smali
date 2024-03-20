.class public Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;
.super Lcom/android/keyguard/KeyguardMessageArea;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mOriginColor:I

.field public final mOriginTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->mOriginColor:I

    .line 6
    sget-object v1, Landroid/R$styleable;->TextView:[I

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 13
    const/4 p2, 0x5

    .line 14
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 15
    move-result p2

    .line 18
    iput p2, p0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->mOriginColor:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p2

    .line 24
    const v0, 0x7f07106c    # @dimen/secure_keyguard_bouncer_message_title_text_size '18.91sp'

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result p2

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 33
    move-result p2

    .line 36
    iput p2, p0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->mOriginTextSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->updateTextColor()V

    .line 42
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/RuntimeException;

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw p1
    .line 52
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->mOriginTextSize:I

    .line 2
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    return-void
    .line 9
.end method

.method public bridge synthetic setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTextColor()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;->mOriginColor:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    return-void
    .line 7
.end method
