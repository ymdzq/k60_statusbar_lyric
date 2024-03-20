.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation


# static fields
.field public static final ATTRS:[I

.field public static final TEXT_ATTRS:[I


# instance fields
.field public final mCurrText:Landroid/widget/TextView;

.field public mGravity:I

.field public mLastKnownCurrentPage:I

.field public mLastKnownPositionOffset:F

.field public final mNextText:Landroid/widget/TextView;

.field public mNonPrimaryAlpha:I

.field public final mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

.field public mPager:Landroidx/viewpager/widget/ViewPager;

.field public final mPrevText:Landroid/widget/TextView;

.field public mScaledTextSpacing:I

.field public mTextColor:I

.field public mUpdatingPositions:Z

.field public mUpdatingText:Z

.field public mWatchingAdapter:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const v0, 0x1010098    # @android:attr/textColor

    .line 2
    const v1, 0x10100af    # @android:attr/gravity

    .line 5
    const v2, 0x1010034    # @android:attr/textAppearance

    .line 8
    const v3, 0x1010095    # @android:attr/textSize

    .line 11
    filled-new-array {v2, v3, v0, v1}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    .line 18
    const v0, 0x101038c    # @android:attr/textAllCaps

    .line 20
    filled-new-array {v0}, [I

    .line 23
    move-result-object v0

    .line 26
    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    .line 27
    return-void
    .line 29
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 5
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 6
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    sget-object v5, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v10

    .line 11
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p2, 0x0

    .line 12
    invoke-virtual {v10, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v10, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eqz v4, :cond_1

    int-to-float v4, v4

    .line 17
    invoke-virtual {p0, p2, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    :cond_1
    const/4 v4, 0x2

    .line 18
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v10, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 20
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v4, 0x3

    const/16 v5, 0x50

    .line 23
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 24
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    const v4, 0x3f19999a    # 0.6f

    .line 26
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 27
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 28
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 29
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v3, :cond_3

    .line 30
    sget-object v4, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 31
    invoke-virtual {v3, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 32
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-eqz p2, :cond_4

    .line 33
    new-instance p2, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 34
    new-instance p2, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 35
    new-instance p2, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 37
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 38
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 40
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    return-void
.end method


# virtual methods
.method public getMinHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public getTextSpacing()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 2
    return p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 9
    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 13
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 19
    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 21
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 23
    if-nez v3, :cond_0

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 32
    :cond_0
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 41
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/viewpager/widget/PagerAdapter;

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 55
    return-void

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string v0, "PagerTitleStrip must be a direct child of a ViewPager."

    .line 61
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
    .line 66
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 14
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 17
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 19
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 21
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 23
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 34
    :cond_1
    return-void
    .line 36
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 6
    const/4 p2, 0x0

    .line 8
    cmpl-float p3, p1, p2

    .line 9
    if-ltz p3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 15
    const/4 p3, 0x1

    .line 17
    invoke-virtual {p0, p2, p1, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 14
    move-result v2

    .line 17
    add-int/2addr v2, v0

    .line 18
    const/4 v0, -0x2

    .line 19
    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 20
    move-result v3

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result v4

    .line 27
    int-to-float v5, v4

    .line 28
    const v6, 0x3e4ccccd    # 0.2f

    .line 29
    mul-float/2addr v5, v6

    .line 32
    float-to-int v5, v5

    .line 33
    invoke-static {p1, v5, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 34
    move-result p1

    .line 37
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 40
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 45
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 53
    move-result p1

    .line 56
    if-ne p1, v1, :cond_0

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 59
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 66
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    .line 70
    move-result v0

    .line 73
    add-int/2addr p1, v2

    .line 74
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 75
    move-result p1

    .line 78
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    .line 81
    move-result v0

    .line 84
    shl-int/lit8 v0, v0, 0x10

    .line 85
    invoke-static {p1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 87
    move-result p1

    .line 90
    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 91
    return-void

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    const-string p1, "Must measure with an exact width"

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0
    .line 102
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 6
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 8
    shl-int/lit8 p1, p1, 0x18

    .line 10
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 12
    const v1, 0xffffff

    .line 14
    and-int/2addr v0, v1

    .line 17
    or-int/2addr p1, v0

    .line 18
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    return-void
    .line 29
.end method

.method public setTextColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 9
    shl-int/lit8 p1, p1, 0x18

    .line 11
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 13
    const v1, 0xffffff

    .line 15
    and-int/2addr v0, v1

    .line 18
    or-int/2addr p1, v0

    .line 19
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    return-void
    .line 30
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    return-void
    .line 17
.end method

.method public setTextSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 4
    iget-object p1, p1, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 8
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 16
    iget-object v0, p2, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    .line 18
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 28
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 30
    if-eqz p1, :cond_2

    .line 32
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 39
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 41
    move-result p1

    .line 44
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 45
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 48
    :cond_2
    return-void
    .line 51
.end method

.method public final updateText(ILandroidx/viewpager/widget/PagerAdapter;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 5
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 12
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 14
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    add-int/lit8 v2, p1, 0x1

    .line 25
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 32
    move-result p2

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 36
    move-result v1

    .line 39
    sub-int/2addr p2, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 41
    move-result v1

    .line 44
    sub-int/2addr p2, v1

    .line 45
    int-to-float p2, p2

    .line 46
    const v1, 0x3f4ccccd    # 0.8f

    .line 47
    mul-float/2addr p2, v1

    .line 50
    float-to-int p2, p2

    .line 51
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    move-result p2

    .line 55
    const/high16 v1, -0x80000000

    .line 56
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    move-result p2

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 62
    move-result v2

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 66
    move-result v3

    .line 69
    sub-int/2addr v2, v3

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 71
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v2

    .line 79
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    move-result v1

    .line 83
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 86
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 91
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 96
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 99
    iget-boolean p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 101
    if-nez p2, :cond_1

    .line 103
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 107
    :cond_1
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 110
    return-void
    .line 112
.end method

.method public updateTextPositions(IFZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 8
    if-eq v1, v3, :cond_0

    .line 10
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    if-nez p3, :cond_1

    .line 22
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 24
    cmpl-float v1, v2, v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 32
    iget-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 36
    move-result v1

    .line 39
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 42
    move-result v3

    .line 45
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 48
    move-result v4

    .line 51
    div-int/lit8 v5, v3, 0x2

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 54
    move-result v6

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 58
    move-result v7

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 62
    move-result v8

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 66
    move-result v9

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 70
    move-result v10

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 74
    move-result v11

    .line 77
    add-int v12, v8, v5

    .line 78
    add-int v13, v9, v5

    .line 80
    sub-int v12, v6, v12

    .line 82
    sub-int/2addr v12, v13

    .line 84
    const/high16 v14, 0x3f000000    # 0.5f

    .line 85
    add-float/2addr v14, v2

    .line 87
    const/high16 v15, 0x3f800000    # 1.0f

    .line 88
    cmpl-float v16, v14, v15

    .line 90
    if-lez v16, :cond_2

    .line 92
    sub-float/2addr v14, v15

    .line 94
    :cond_2
    sub-int v13, v6, v13

    .line 95
    int-to-float v12, v12

    .line 97
    mul-float/2addr v12, v14

    .line 98
    float-to-int v12, v12

    .line 99
    sub-int/2addr v13, v12

    .line 100
    sub-int/2addr v13, v5

    .line 101
    add-int/2addr v3, v13

    .line 102
    iget-object v5, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 103
    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    .line 105
    move-result v5

    .line 108
    iget-object v12, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v12}, Landroid/widget/TextView;->getBaseline()I

    .line 111
    move-result v12

    .line 114
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    .line 117
    move-result v14

    .line 120
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result v15

    .line 124
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result v15

    .line 128
    sub-int v5, v15, v5

    .line 129
    sub-int v12, v15, v12

    .line 131
    sub-int/2addr v15, v14

    .line 133
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 136
    move-result v14

    .line 139
    add-int/2addr v14, v5

    .line 140
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 143
    move-result v2

    .line 146
    add-int/2addr v2, v12

    .line 147
    move/from16 p1, v4

    .line 148
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 152
    move-result v4

    .line 155
    add-int/2addr v4, v15

    .line 156
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result v2

    .line 160
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 161
    move-result v2

    .line 164
    iget v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 165
    and-int/lit8 v4, v4, 0x70

    .line 167
    const/16 v14, 0x10

    .line 169
    if-eq v4, v14, :cond_4

    .line 171
    const/16 v14, 0x50

    .line 173
    if-eq v4, v14, :cond_3

    .line 175
    add-int/2addr v5, v10

    .line 177
    add-int/2addr v12, v10

    .line 178
    add-int/2addr v10, v15

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    sub-int/2addr v7, v11

    .line 181
    sub-int/2addr v7, v2

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    sub-int/2addr v7, v10

    .line 184
    sub-int/2addr v7, v11

    .line 185
    sub-int/2addr v7, v2

    .line 186
    div-int/lit8 v7, v7, 0x2

    .line 187
    :goto_1
    add-int/2addr v5, v7

    .line 189
    add-int/2addr v12, v7

    .line 190
    add-int v10, v7, v15

    .line 191
    :goto_2
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 195
    move-result v4

    .line 198
    add-int/2addr v4, v12

    .line 199
    invoke-virtual {v2, v13, v12, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 200
    iget v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 203
    sub-int/2addr v13, v2

    .line 205
    sub-int/2addr v13, v1

    .line 206
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 207
    move-result v2

    .line 210
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 211
    add-int/2addr v1, v2

    .line 213
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 214
    move-result v7

    .line 217
    add-int/2addr v7, v5

    .line 218
    invoke-virtual {v4, v2, v5, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 219
    sub-int/2addr v6, v9

    .line 222
    sub-int v6, v6, p1

    .line 223
    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 225
    add-int/2addr v3, v1

    .line 227
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 228
    move-result v1

    .line 231
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 232
    add-int v4, v1, p1

    .line 234
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 236
    move-result v3

    .line 239
    add-int/2addr v3, v10

    .line 240
    invoke-virtual {v2, v1, v10, v4, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 241
    move/from16 v1, p2

    .line 244
    iput v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 246
    const/4 v1, 0x0

    .line 248
    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 249
    return-void
    .line 251
.end method
