.class public Lmiuix/animation/font/FontWeightProperty;
.super Lmiuix/animation/property/ViewProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/property/ISpecificProperty;


# static fields
.field private static final NAME:Ljava/lang/String; = "fontweight"


# instance fields
.field private mCurWeight:F

.field private mFontType:I

.field private mTextViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    const-string v0, "fontweight"

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 4
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput v0, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 17
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    check-cast p1, Lmiuix/animation/font/FontWeightProperty;

    .line 27
    iget-object p0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/widget/TextView;

    .line 35
    iget-object p1, p1, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    if-eqz p0, :cond_3

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_0
    return v0

    .line 55
    :cond_4
    :goto_1
    return v1
    .line 56
.end method

.method public getScaledTextSize()F
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 24
    div-float/2addr v0, p0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
    .line 29
.end method

.method public getSpecificValue(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    sget v1, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 10
    int-to-float v1, v1

    .line 12
    cmpg-float v1, p1, v1

    .line 13
    if-gez v1, :cond_0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Lmiuix/animation/font/VarFontUtils;->getSysFontScale(Landroid/content/Context;)I

    .line 23
    move-result v0

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0}, Lmiuix/animation/font/FontWeightProperty;->getScaledTextSize()F

    .line 28
    move-result v1

    .line 31
    iget p0, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    .line 32
    invoke-static {p1, v1, p0, v0}, Lmiuix/animation/font/VarFontUtils;->getScaleWeight(IFII)I

    .line 34
    move-result p0

    .line 37
    int-to-float p0, p0

    .line 38
    return p0

    .line 39
    :cond_0
    return p1
    .line 40
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    return-object p0
    .line 10
.end method

.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    iget p0, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/font/FontWeightProperty;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v0

    .line 36
    iget-object p0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 37
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 43
    move-result p0

    .line 46
    return p0
    .line 47
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 2
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 3
    iget-object p0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    float-to-int p1, p2

    .line 4
    invoke-static {p0, p1}, Lmiuix/animation/font/VarFontUtils;->setVariationFont(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/font/FontWeightProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
