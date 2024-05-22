.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimationEnabled:Z

.field public final mColorAnimator:Landroid/animation/ValueAnimator;

.field public mDisabledByPolicy:Z

.field public final mIcon:Landroid/view/View;

.field public mIconSizePx:I

.field public mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mState:I

.field public mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 6
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 9
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    .line 12
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 14
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 24
    const v1, 0x7f070fad    # @dimen/qs_icon_size '20.0dp'

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    const-wide/16 p0, 0x15e

    .line 43
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    return-void
    .line 48
.end method


# virtual methods
.method public createIcon()Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 2
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    .line 6
    const p0, 0x1020006    # @android:id/icon

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V

    .line 12
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 17
    return-object v0
    .line 20
.end method

.method public getIconMeasureMode()I
    .locals 0

    .line 1
    const/high16 p0, 0x40000000    # 2.0f

    .line 2
    return p0
    .line 4
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const v0, 0x7f070fad    # @dimen/qs_icon_size '20.0dp'

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 20
    return-void
    .line 22
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result p2

    .line 11
    sub-int/2addr p1, p2

    .line 12
    div-int/lit8 p1, p1, 0x2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result p2

    .line 20
    add-int/2addr p2, p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p3

    .line 25
    const/4 p4, 0x0

    .line 26
    add-int/2addr p3, p4

    .line 27
    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 28
    return-void
    .line 31
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 6
    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    .line 16
    move-result v1

    .line 19
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 24
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result p2

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 33
    return-void
    .line 36
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 5

    .line 2
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto/16 :goto_5

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    iget-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    const v1, 0x1010036    # @android:attr/textColorPrimary

    .line 6
    invoke-static {v0, v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const v1, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 7
    invoke-static {v0, v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    goto :goto_2

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2

    :cond_5
    :goto_1
    const v1, 0x1010212    # @android:attr/textColorTertiary

    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    .line 10
    :goto_2
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 11
    iget-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    .line 12
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_9

    if-eqz p3, :cond_9

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_9

    .line 14
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 15
    instance-of p2, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz p2, :cond_7

    .line 16
    move-object p2, p1

    check-cast p2, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 17
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz p2, :cond_8

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "color"

    .line 20
    filled-new-array {v1, v0}, [I

    move-result-object p3

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 21
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 22
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 23
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 24
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$EndRunnableAnimatorListener;

    invoke-direct {p2, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$EndRunnableAnimatorListener;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 27
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->run()V

    goto :goto_5

    .line 29
    :cond_9
    instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_a

    .line 30
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 31
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 33
    :goto_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    :goto_5
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method public setTint(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 9
    return-void
    .line 11
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    const/16 v1, 0x5b

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v2, "state="

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, ", tint="

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 59
    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, ", lastIcon="

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    const-string p0, "]"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    return-object p0
    .line 95
.end method

.method public final updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 13
    :goto_0
    const v1, 0x7f0a0767    # @id/qs_icon_tag

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 25
    const v3, 0x7f0a076b    # @id/qs_slash_tag

    .line 26
    if-eqz v2, :cond_1

    .line 29
    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 31
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 40
    if-nez v2, :cond_b

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 43
    if-eqz p3, :cond_3

    .line 44
    iget-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 46
    const/4 v4, 0x1

    .line 48
    if-eqz p3, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    .line 51
    move-result p3

    .line 54
    if-eqz p3, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object p3

    .line 60
    if-eqz p3, :cond_2

    .line 61
    move p3, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move p3, v2

    .line 65
    :goto_1
    if-eqz p3, :cond_3

    .line 66
    goto :goto_2

    .line 68
    :cond_3
    move v4, v2

    .line 69
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 70
    const/4 p3, 0x0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    if-eqz v4, :cond_4

    .line 75
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v0, v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 79
    move-result-object v5

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v0, v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v5

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move-object v5, p3

    .line 91
    :goto_3
    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    .line 94
    move-result v6

    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move v6, v2

    .line 99
    :goto_4
    if-eqz v5, :cond_8

    .line 100
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 102
    move-result-object v7

    .line 105
    if-eqz v7, :cond_7

    .line 106
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 108
    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v5

    .line 115
    :cond_7
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 119
    move-result p0

    .line 122
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 123
    :cond_8
    instance-of p0, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 126
    if-eqz p0, :cond_9

    .line 128
    move-object p0, p1

    .line 130
    check-cast p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    .line 133
    invoke-virtual {p0, p3, v5}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    .line 136
    goto :goto_5

    .line 139
    :cond_9
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :goto_5
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 143
    iget-object p0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 146
    invoke-virtual {p1, v3, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 148
    invoke-virtual {p1, v2, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 151
    instance-of p0, v5, Landroid/graphics/drawable/Animatable2;

    .line 154
    if-eqz p0, :cond_b

    .line 156
    check-cast v5, Landroid/graphics/drawable/Animatable2;

    .line 158
    invoke-interface {v5}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 160
    if-eqz v4, :cond_a

    .line 163
    iget-boolean p0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 165
    if-eqz p0, :cond_b

    .line 167
    new-instance p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    .line 169
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Landroid/graphics/drawable/Animatable2;)V

    .line 171
    invoke-interface {v5, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 174
    goto :goto_6

    .line 177
    :cond_a
    invoke-interface {v5}, Landroid/graphics/drawable/Animatable2;->stop()V

    .line 178
    :cond_b
    :goto_6
    return-void
    .line 181
.end method
