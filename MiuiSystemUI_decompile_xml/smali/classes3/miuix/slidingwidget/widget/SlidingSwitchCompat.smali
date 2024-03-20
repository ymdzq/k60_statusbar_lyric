.class public Lmiuix/slidingwidget/widget/SlidingSwitchCompat;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0406cb    # @attr/slidingButtonStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initDrawable()V

    .line 6
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    .line 7
    sget-object p0, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    const v1, 0x7f140874    # @style/Widget.SlidingButton.DayNight

    .line 8
    invoke-virtual {p1, p2, p0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p1, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->drawableStateChanged()V

    .line 2
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 6
    return p0

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getAlpha()F

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onHoverEvent(Landroid/view/MotionEvent;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    iget p2, p1, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 4
    iget p1, p1, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    .line 8
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 11
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setParentClipChildren()V

    .line 13
    return-void
    .line 16
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
    .line 18
.end method

.method public final performClick()Z
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    .line 2
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
    .line 13
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iput p1, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 11
    return-void
    .line 14
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 11
    move-result p1

    .line 14
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setChecked(Z)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setLayerType(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 6
    :cond_0
    return-void
    .line 8
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 9
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 14
    if-ne p1, p0, :cond_0

    .line 16
    move p0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v0

    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    move v1, v0

    .line 24
    :cond_2
    :goto_1
    return v1
    .line 25
.end method
