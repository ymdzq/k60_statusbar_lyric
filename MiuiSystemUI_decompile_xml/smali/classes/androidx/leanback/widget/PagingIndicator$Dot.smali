.class public final Landroidx/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAlpha:F

.field public mArrowImageRadius:F

.field public mCenterX:F

.field public mDiameter:F

.field public mDirection:F

.field public mFgColor:I

.field public mLayoutDirection:F

.field public mRadius:F

.field public mTranslationX:F

.field public final synthetic this$0:Landroidx/leanback/widget/PagingIndicator;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PagingIndicator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 9
    iget-boolean p1, p1, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    :goto_0
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final adjustAlpha()V
    .locals 4

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 4
    mul-float/2addr v1, v0

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    .line 11
    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 13
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 15
    move-result v2

    .line 18
    iget v3, v1, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 19
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 21
    move-result v3

    .line 24
    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 25
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 27
    move-result v1

    .line 30
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 31
    move-result v0

    .line 34
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    .line 35
    return-void
    .line 37
.end method
