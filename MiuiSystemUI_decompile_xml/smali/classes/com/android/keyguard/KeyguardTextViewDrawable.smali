.class public Lcom/android/keyguard/KeyguardTextViewDrawable;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAliganCenter:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aget-object p3, p1, p2

    .line 12
    const/4 p4, 0x1

    .line 14
    aget-object v0, p1, p4

    .line 15
    const/4 v1, 0x2

    .line 17
    aget-object v2, p1, v1

    .line 18
    const/4 v3, 0x3

    .line 20
    aget-object p1, p1, v3

    .line 21
    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p0, p3, p2}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 25
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0, v0, p4}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 30
    :cond_1
    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p0, p1, v3}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 40
    :cond_3
    invoke-virtual {p0, p3, v0, v2, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
    .line 46
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p2, :cond_2

    .line 12
    const/4 v4, 0x1

    .line 14
    if-eq p2, v4, :cond_0

    .line 15
    if-eq p2, v2, :cond_2

    .line 17
    const/4 v4, 0x3

    .line 19
    if-eq p2, v4, :cond_0

    .line 20
    move p0, v3

    .line 22
    move v0, p0

    .line 23
    move v1, v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    .line 26
    if-eqz p2, :cond_1

    .line 28
    move p2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget p0, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    .line 32
    neg-int p0, p0

    .line 34
    div-int/2addr p0, v2

    .line 35
    div-int/lit8 p2, v0, 0x2

    .line 36
    add-int/2addr p2, p0

    .line 38
    :goto_0
    add-int/2addr v0, p2

    .line 39
    add-int/2addr v1, v3

    .line 40
    move p0, v3

    .line 41
    move v3, p2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    .line 44
    if-eqz p2, :cond_3

    .line 46
    move p0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 50
    move-result p2

    .line 53
    neg-int p2, p2

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 55
    move-result v4

    .line 58
    mul-int/2addr v4, p2

    .line 59
    div-int/2addr v4, v2

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 61
    move-result p0

    .line 64
    div-int/2addr p0, v2

    .line 65
    add-int/2addr p0, v4

    .line 66
    :goto_1
    add-int/2addr v1, p0

    .line 67
    :goto_2
    invoke-virtual {p1, v3, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    return-void
    .line 71
.end method
