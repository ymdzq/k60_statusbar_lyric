.class public Landroidx/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAttachedToWindow:Z

.field public mColorAnimationEnabled:Z

.field public mColorAnimator:Landroid/animation/ValueAnimator;

.field public final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field public mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field public final mFocusUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

.field public final mFocusedZ:F

.field public final mFocusedZoom:F

.field public final mIcon:Landroid/widget/ImageView;

.field public mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mListener:Landroid/view/View$OnClickListener;

.field public final mPulseDurationMs:I

.field public final mRootView:Landroid/view/View;

.field public final mScaleDurationMs:I

.field public final mSearchOrbView:Landroid/view/View;

.field public mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field public final mUnfocusedZ:F

.field public final mUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040680    # @attr/searchOrbViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 5
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;-><init>(Landroidx/leanback/widget/SearchOrbView;I)V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    .line 6
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v0, v7, v9}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;-><init>(Landroidx/leanback/widget/SearchOrbView;I)V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v0, "layout_inflater"

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    invoke-virtual {v0, v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a083a    # @id/search_orb

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v7, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    const v2, 0x7f0a0412    # @id/icon

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v7, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090018    # @fraction/lb_search_orb_focused_zoom '120.00001%'

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0094    # @integer/lb_search_orb_pulse_duration_ms '1000'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0095    # @integer/lb_search_orb_scale_duration_ms '150'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705b9    # @dimen/lb_search_orb_focused_z '8.0dp'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v13, v0

    iput v13, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705bf    # @dimen/lb_search_orb_unfocused_z '2.0dp'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v14, v0

    iput v14, v7, Landroidx/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 17
    sget-object v2, Landroidx/leanback/R$styleable;->lbSearchOrbView:[I

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-virtual {v1, v3, v2, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    const/4 v6, 0x0

    .line 18
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    move-object v4, v15

    .line 19
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x2

    .line 20
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f08125c    # @drawable/lb_ic_in_app_search 'res/drawable-hdpi/lb_ic_in_app_search.png'

    .line 21
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    :cond_0
    invoke-virtual {v7, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f06018f    # @color/lb_default_search_color '#ff86c739'

    .line 23
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 24
    invoke-virtual {v15, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 25
    invoke-virtual {v15, v8, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x3

    .line 26
    invoke-virtual {v15, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 27
    new-instance v3, Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v3, v0, v1, v2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {v7, v3}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 28
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 30
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 31
    invoke-virtual {v7, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    sub-float v0, v13, v14

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    add-float/2addr v0, v14

    .line 33
    invoke-static {v11, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    .line 34
    invoke-static {v12, v13}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public final animateOnFocus(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    move-result-object v0

    .line 22
    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 23
    int-to-long v1, v1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 30
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 33
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 35
    if-nez v1, :cond_1

    .line 37
    const/4 v1, 0x2

    .line 39
    new-array v1, v1, [F

    .line 40
    fill-array-data v1, :array_0

    .line 42
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    move-result-object v1

    .line 48
    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 49
    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    .line 51
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 56
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 58
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    goto :goto_1

    .line 63
    :cond_2
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 64
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 66
    :goto_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 69
    int-to-long v2, v0

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 75
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 77
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 82
.end method

.method public getFocusedZoom()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 2
    return p0
    .line 4
.end method

.method public getLayoutResourceId()I
    .locals 0

    .line 1
    const p0, 0x7f0d015b    # @layout/lb_search_orb 'res/layout/lb_search_orb.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getOrbColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    iget p0, p0, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 4
    return p0
    .line 6
.end method

.method public getOrbColors()Landroidx/leanback/widget/SearchOrbView$Colors;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOrbIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 8
    return-void
    .line 11
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 8
    return-void
    .line 11
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOrbColor(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$Colors;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, v1}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setOrbColor(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$Colors;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 4
    iget p1, p1, Landroidx/leanback/widget/SearchOrbView$Colors;->iconColor:I

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 11
    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 15
    iget p1, p1, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 24
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 42
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 44
    :cond_1
    :goto_0
    return-void
    .line 47
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
    .line 9
.end method

.method public final updateColorAnimator()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 20
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 22
    iget v1, v1, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 29
    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 30
    iget v2, v2, Landroidx/leanback/widget/SearchOrbView$Colors;->brightColor:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 37
    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 38
    iget v3, v3, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 45
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 54
    const/4 v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 57
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 60
    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 62
    mul-int/lit8 v1, v1, 0x2

    .line 64
    int-to-long v1, v1

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 70
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    .line 72
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 77
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    :cond_1
    return-void
    .line 82
.end method
