.class public Landroidx/viewpager/widget/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public childIndex:I

.field public final gravity:I

.field public isDecor:Z

.field public needsMeasure:Z

.field public position:I

.field public widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 5
    sget-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x30

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
