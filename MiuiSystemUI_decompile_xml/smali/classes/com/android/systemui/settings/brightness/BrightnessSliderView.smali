.class public Lcom/android/systemui/settings/brightness/BrightnessSliderView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

.field public mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mScale:F

.field public mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    return-void
.end method


# virtual methods
.method public final applySliderScale()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 17
    mul-float/2addr v1, v2

    .line 19
    float-to-int v1, v1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v2

    .line 26
    sub-int/2addr v2, v1

    .line 27
    div-int/lit8 v2, v2, 0x2

    .line 28
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 32
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 34
    add-int/2addr v1, v2

    .line 36
    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public getMax()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getSliderScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getValue()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    const v0, 0x7f0a0899    # @id/slider

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 21
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 32
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 38
    const v1, 0x102000d    # @android:id/progress

    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 53
    const v1, 0x7f0a089a    # @id/slider_foreground

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    return-void
    .line 64
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    .line 5
    return-void
    .line 8
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 14
    return-void
    .line 17
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    .line 2
    return-void
    .line 4
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public setSliderScaleY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    return-void
    .line 7
.end method
