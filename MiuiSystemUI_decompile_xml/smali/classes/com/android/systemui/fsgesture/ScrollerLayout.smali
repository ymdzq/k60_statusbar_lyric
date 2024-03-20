.class public Lcom/android/systemui/fsgesture/ScrollerLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHorizontalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/ScrollerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/ScrollerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/ScrollerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07100f    # @dimen/quick_switch_demo_app_gap '18.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/fsgesture/ScrollerLayout;->mHorizontalGap:I

    return-void
.end method


# virtual methods
.method public getHorizontalGap()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/fsgesture/ScrollerLayout;->mHorizontalGap:I

    .line 2
    return p0
    .line 4
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    :goto_0
    if-ge p3, p1, :cond_0

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object p4

    .line 15
    add-int/lit8 p5, p3, -0x1

    .line 16
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result v0

    .line 21
    iget v1, p0, Lcom/android/systemui/fsgesture/ScrollerLayout;->mHorizontalGap:I

    .line 22
    add-int/2addr v0, v1

    .line 24
    mul-int/2addr v0, p5

    .line 25
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result p5

    .line 29
    add-int/2addr p5, v0

    .line 30
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {p4, v0, p2, p5, v1}, Landroid/view/View;->layout(IIII)V

    .line 35
    add-int/lit8 p3, p3, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    return-void
    .line 41
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    return-void
    .line 22
.end method
