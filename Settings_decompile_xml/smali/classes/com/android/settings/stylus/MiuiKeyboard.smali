.class public Lcom/android/settings/stylus/MiuiKeyboard;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyboard.java"


# instance fields
.field private mEnable:Z

.field private mFunctionTextView:Landroid/widget/TextView;

.field private mMask:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mEnable:Z

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->keyboard_edit_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiKeyboard;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 38
    sget v0, Lcom/android/settings/R$id;->mask:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mMask:Landroid/view/View;

    .line 39
    sget v0, Lcom/android/settings/R$id;->function_key_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mFunctionTextView:Landroid/widget/TextView;

    return-void
.end method

.method private updateTextPosition(II)V
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->keyboard_demo_x_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->keyboard_demo_y_ratio:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 54
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mFunctionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setX(F)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mFunctionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 46
    invoke-direct {p0, p4, p5}, Lcom/android/settings/stylus/MiuiKeyboard;->updateTextPosition(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->keyboard_demo_width_and_height_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 62
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mEnable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mEnable:Z

    .line 70
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiKeyboard;->mMask:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
