.class public abstract Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContainer:Landroid/view/ViewGroup;

.field public mIsDisabled:Z

.field public mIsVisible:Z

.field public mMessage:Ljava/lang/CharSequence;

.field public final mStyleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsDisabled:Z

    .line 6
    const/4 p1, 0x2

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    if-eqz p2, :cond_0

    .line 13
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 15
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const p1, 0x7f1401a1    # @style/Keyguard.TextView

    .line 22
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public getStyleResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    .line 2
    return p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f0a048f    # @id/keyguard_message_area_container

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContainer:Landroid/view/ViewGroup;

    .line 18
    return-void
    .line 20
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getStyleResId()I

    .line 4
    move-result v1

    .line 7
    const v2, 0x1010095    # @android:attr/textSize

    .line 8
    filled-new-array {v2}, [I

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 20
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
    .line 31
.end method

.method public onThemeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 2
    return-void
    .line 5
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public bridge synthetic setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final update()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsDisabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    .line 20
    if-nez v1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 v1, 0x4

    .line 27
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 31
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateTextColor()V

    .line 44
    return-void
    .line 47
.end method

.method public abstract updateTextColor()V
.end method
