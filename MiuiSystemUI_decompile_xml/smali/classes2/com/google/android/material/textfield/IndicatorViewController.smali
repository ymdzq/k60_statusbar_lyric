.class public final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public captionAnimator:Landroid/animation/Animator;

.field public captionArea:Landroid/widget/FrameLayout;

.field public captionDisplayed:I

.field public captionToShow:I

.field public final captionTranslationYPx:F

.field public final context:Landroid/content/Context;

.field public errorEnabled:Z

.field public errorText:Ljava/lang/CharSequence;

.field public errorTextAppearance:I

.field public errorView:Landroidx/appcompat/widget/AppCompatTextView;

.field public errorViewContentDescription:Ljava/lang/CharSequence;

.field public errorViewTextColor:Landroid/content/res/ColorStateList;

.field public helperText:Ljava/lang/CharSequence;

.field public helperTextEnabled:Z

.field public helperTextTextAppearance:I

.field public helperTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public helperTextViewTextColor:Landroid/content/res/ColorStateList;

.field public indicatorArea:Landroid/widget/LinearLayout;

.field public indicatorsAdded:I

.field public final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field public typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 16
    const v0, 0x7f0702b4    # @dimen/design_textinput_caption_translate_y '5.0dp'

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final addIndicator(Landroid/widget/TextView;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/widget/LinearLayout;

    .line 12
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 14
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 24
    iget-object v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    const/4 v5, -0x1

    .line 28
    invoke-virtual {v4, v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    .line 32
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 43
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 46
    iget-object v5, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 53
    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 62
    if-eqz p2, :cond_2

    .line 63
    if-ne p2, v0, :cond_1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    move p2, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    move p2, v0

    .line 70
    :goto_1
    if-eqz p2, :cond_3

    .line 71
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 75
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 78
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    goto :goto_2

    .line 83
    :cond_3
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 99
    add-int/2addr p1, v0

    .line 101
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 102
    return-void
    .line 104
.end method

.method public final adjustIndicatorPadding()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    .line 26
    move-result v3

    .line 29
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 30
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    .line 34
    move-result v4

    .line 37
    const v5, 0x7f070766    # @dimen/material_helper_text_font_1_3_padding_horizontal '12.0dp'

    .line 38
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v4

    .line 50
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v6

    .line 54
    const v7, 0x7f070765    # @dimen/material_helper_text_default_padding_top '4.0dp'

    .line 55
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v6

    .line 61
    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v6

    .line 67
    const v7, 0x7f070767    # @dimen/material_helper_text_font_1_3_padding_top '8.0dp'

    .line 68
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v6

    .line 74
    :cond_2
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    .line 75
    move-result v0

    .line 78
    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result v0

    .line 88
    :cond_3
    invoke-static {p0, v4, v6, v0, v2}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 89
    :cond_4
    return-void
    .line 92
.end method

.method public final cancelCaptionAnimator()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 4

    .line 1
    if-eqz p3, :cond_4

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_2

    .line 6
    :cond_0
    if-eq p4, p6, :cond_1

    .line 7
    if-ne p4, p5, :cond_4

    .line 9
    :cond_1
    const/4 p2, 0x1

    .line 11
    const/4 p5, 0x0

    .line 12
    if-ne p6, p4, :cond_2

    .line 13
    move v0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    move v0, p5

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    goto :goto_1

    .line 23
    :cond_3
    move v0, v1

    .line 24
    :goto_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 25
    new-array v3, p2, [F

    .line 27
    aput v0, v3, p5

    .line 29
    invoke-static {p3, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 31
    move-result-object v0

    .line 34
    const-wide/16 v2, 0xa7

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 40
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    if-ne p6, p4, :cond_4

    .line 50
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 52
    const/4 p6, 0x2

    .line 54
    new-array p6, p6, [F

    .line 55
    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 57
    neg-float p0, p0

    .line 59
    aput p0, p6, p5

    .line 60
    aput v1, p6, p2

    .line 62
    invoke-static {p3, p4, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 64
    move-result-object p0

    .line 67
    const-wide/16 p2, 0xd9

    .line 68
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    sget-object p2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 73
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    :goto_2
    return-void
    .line 81
.end method

.method public final getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    return-object p0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    return-object p0
    .line 15
.end method

.method public final hideError()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 8
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 30
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 32
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 34
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    const-string v3, ""

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 40
    move-result v2

    .line 43
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 44
    return-void
    .line 47
.end method

.method public final removeIndicator(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eqz p2, :cond_2

    .line 8
    if-ne p2, v1, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 14
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 16
    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 20
    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 24
    :goto_1
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 29
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 31
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 33
    if-nez p1, :cond_4

    .line 35
    const/16 p1, 0x8

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 39
    :cond_4
    return-void
    .line 42
.end method

.method public final shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 18
    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 20
    if-ne v0, p0, :cond_0

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
    .line 39
.end method

.method public final updateCaptionViewsVisibility(IIZ)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move v8, p1

    .line 3
    move/from16 v9, p2

    .line 4
    move/from16 v10, p3

    .line 6
    if-ne v8, v9, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v11, 0x0

    .line 11
    if-eqz v10, :cond_1

    .line 12
    new-instance v12, Landroid/animation/AnimatorSet;

    .line 14
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    iput-object v12, v7, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 19
    new-instance v13, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    .line 26
    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    const/4 v4, 0x2

    .line 30
    move-object v0, p0

    .line 31
    move-object v1, v13

    .line 32
    move v5, p1

    .line 33
    move/from16 v6, p2

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 36
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 39
    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    const/4 v4, 0x1

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 44
    invoke-static {v12, v13}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    .line 50
    move-result-object v3

    .line 53
    invoke-virtual {p0, v9}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    .line 54
    move-result-object v5

    .line 57
    new-instance v6, Lcom/google/android/material/textfield/IndicatorViewController$1;

    .line 58
    move-object v0, v6

    .line 60
    move-object v1, p0

    .line 61
    move/from16 v2, p2

    .line 62
    move v4, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 65
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    if-ne v8, v9, :cond_2

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    if-eqz v9, :cond_3

    .line 78
    invoke-virtual {p0, v9}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    .line 80
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 91
    :cond_3
    if-eqz v8, :cond_4

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    .line 96
    move-result-object v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    const/4 v1, 0x4

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const/4 v1, 0x1

    .line 106
    if-ne v8, v1, :cond_4

    .line 107
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_4
    iput v9, v7, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 113
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 117
    invoke-virtual {v0, v10, v11}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 123
    return-void
    .line 126
.end method
