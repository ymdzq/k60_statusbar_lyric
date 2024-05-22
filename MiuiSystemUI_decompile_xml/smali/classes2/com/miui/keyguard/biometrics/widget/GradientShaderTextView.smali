.class public Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAnimation:Z

.field public mDarkStyle:Z

.field public mDelta:I

.field public mGradientColorWidth:F

.field public mIntervalDuration:J

.field public mIsRTL:Z

.field public mLinerGradient:Landroid/graphics/LinearGradient;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mMaxWidth:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mTextWidth:I

.field public mTranslate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mGradientColorWidth:F

    const-wide/16 p1, 0xa

    .line 5
    iput-wide p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mIntervalDuration:J

    const/16 p1, 0x14

    .line 6
    iput p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDelta:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDarkStyle:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mPaint:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mMatrix:Landroid/graphics/Matrix;

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070403    # @dimen/hint_max_width '132.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mMaxWidth:I

    return-void
.end method


# virtual methods
.method public getScrollWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 12
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    iput v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTextWidth:I

    .line 17
    iget p0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mMaxWidth:I

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    .line 5
    move-result p1

    .line 8
    iget v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTextWidth:I

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    .line 15
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mAnimation:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mLinerGradient:Landroid/graphics/LinearGradient;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 26
    if-gt v0, p1, :cond_0

    .line 28
    if-ltz v0, :cond_0

    .line 30
    iget p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDelta:I

    .line 32
    add-int/2addr v0, p1

    .line 34
    iput v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 35
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mMatrix:Landroid/graphics/Matrix;

    .line 37
    int-to-float v0, v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 41
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mLinerGradient:Landroid/graphics/LinearGradient;

    .line 44
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 48
    iget-wide v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mIntervalDuration:J

    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    .line 53
    :cond_0
    return-void
    .line 56
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mAnimation:Z

    .line 6
    iput p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 8
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mGradientColorWidth:F

    .line 11
    return-void
    .line 13
.end method

.method public setDarkStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDarkStyle:Z

    .line 2
    return-void
    .line 4
.end method
