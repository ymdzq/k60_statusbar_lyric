.class public final Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public editText:Landroid/widget/EditText;

.field public iconInAnim:Landroid/animation/AnimatorSet;

.field public iconOutAnim:Landroid/animation/ValueAnimator;

.field public final onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

.field public final onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 2
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 7
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    .line 10
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 14
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final afterEditTextChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 13
    return-void
    .line 16
.end method

.method public final animateIcon(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    .line 4
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 15
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 28
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 30
    if-eqz v0, :cond_2

    .line 33
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 35
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 43
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 45
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    if-eqz v0, :cond_2

    .line 53
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 55
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    .line 57
    :cond_2
    :goto_1
    return-void
    .line 60
.end method

.method public final getIconContentDescriptionResId()I
    .locals 0

    .line 1
    const p0, 0x7f1302a5    # @string/clear_text_end_icon_content_description 'Clear text'

    .line 2
    return p0
    .line 5
.end method

.method public final getIconDrawableResId()I
    .locals 0

    .line 1
    const p0, 0x7f081681    # @drawable/mtrl_ic_cancel 'res/drawable/mtrl_ic_cancel.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onEditTextAttached(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    .line 6
    move-result p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 10
    return-void
    .line 13
.end method

.method public final onSuffixVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public final setUp()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    .line 5
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 12
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    const-wide/16 v2, 0x96

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    .line 22
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    new-array v2, v0, [F

    .line 31
    fill-array-data v2, :array_1

    .line 33
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 36
    move-result-object v2

    .line 39
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 40
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    const-wide/16 v5, 0x64

    .line 45
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v7, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    .line 50
    const/4 v8, 0x1

    .line 52
    invoke-direct {v7, p0, v8}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    .line 53
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 59
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 61
    iput-object v7, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 64
    filled-new-array {v1, v2}, [Landroid/animation/Animator;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 73
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    .line 75
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    new-array v0, v0, [F

    .line 83
    fill-array-data v0, :array_2

    .line 85
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    .line 98
    invoke-direct {v1, p0, v8}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 106
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    .line 108
    invoke-direct {v1, p0, v8}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final shouldBeVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 20
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object p0

    .line 25
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    .line 26
    move-result p0

    .line 29
    if-lez p0, :cond_1

    .line 30
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final tearDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    return-void
    .line 14
.end method
