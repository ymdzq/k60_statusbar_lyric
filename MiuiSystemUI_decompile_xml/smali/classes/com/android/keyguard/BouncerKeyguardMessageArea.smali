.class public Lcom/android/keyguard/BouncerKeyguardMessageArea;
.super Lcom/android/keyguard/KeyguardMessageArea;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final DEFAULT_COLOR:I

.field public final HIDE_DURATION_MILLIS:J

.field public final SHOW_DURATION_MILLIS:J

.field public mDefaultColorState:Landroid/content/res/ColorStateList;

.field public mNextMessageColorState:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->DEFAULT_COLOR:I

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 12
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 14
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    const-wide/16 p1, 0x96

    .line 19
    iput-wide p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->SHOW_DURATION_MILLIS:J

    .line 21
    const-wide/16 p1, 0xc8

    .line 23
    iput-wide p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->HIDE_DURATION_MILLIS:J

    .line 25
    return-void
    .line 27
.end method

.method private final getColorInStyle()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getStyleResId()I

    .line 6
    move-result p0

    .line 9
    const v1, 0x1010098    # @android:attr/textColor

    .line 10
    filled-new-array {v1}, [I

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 24
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return-object v0
    .line 33
.end method


# virtual methods
.method public getHIDE_DURATION_MILLIS()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->HIDE_DURATION_MILLIS:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getSHOW_DURATION_MILLIS()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->SHOW_DURATION_MILLIS:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/BouncerKeyguardMessageArea;->getColorInStyle()Landroid/content/res/ColorStateList;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 9
    return-void
    .line 11
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/BouncerKeyguardMessageArea;->getColorInStyle()Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    const v1, 0x112009b    # @android:^attr-private/materialColorOnSurfaceInverse

    .line 12
    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 15
    move-result-object v0

    .line 18
    :cond_0
    iput-object v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 21
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    if-nez p1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 18
    if-eqz p2, :cond_2

    .line 19
    :cond_1
    return-void

    .line 21
    :cond_2
    const/4 p2, 0x0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 23
    return-void
    .line 26
.end method

.method public setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 2
    return-void
    .line 4
.end method

.method public final updateTextColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result v1

    .line 11
    iget v2, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->DEFAULT_COLOR:I

    .line 12
    if-eq v1, v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 16
    iget-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mDefaultColorState:Landroid/content/res/ColorStateList;

    .line 18
    if-nez v1, :cond_0

    .line 20
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 22
    move-result-object v1

    .line 25
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->mNextMessageColorState:Landroid/content/res/ColorStateList;

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    return-void
    .line 31
.end method
