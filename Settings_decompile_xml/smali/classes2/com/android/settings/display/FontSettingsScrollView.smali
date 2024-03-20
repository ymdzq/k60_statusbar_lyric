.class public Lcom/android/settings/display/FontSettingsScrollView;
.super Landroid/widget/ScrollView;
.source "FontSettingsScrollView.java"


# instance fields
.field private mCanScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ScrollView;->measureChild(Landroid/view/View;II)V

    .line 42
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_1

    .line 44
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 45
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    sget v7, Lcom/android/settings/R$id;->recommend_layout:I

    if-ne v5, v7, :cond_0

    int-to-float v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v6, v5

    :cond_0
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, v0, v4}, Landroid/widget/ScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCanScroll(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/display/FontSettingsScrollView;->mCanScroll:Z

    return-void
.end method
