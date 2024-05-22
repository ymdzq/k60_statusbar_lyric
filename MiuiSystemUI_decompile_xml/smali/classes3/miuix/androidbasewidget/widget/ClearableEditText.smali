.class public Lmiuix/androidbasewidget/widget/ClearableEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY_STATE_SET:[I


# instance fields
.field public final mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mPressed:Z

.field public mShown:Z

.field public final mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a9    # @android:attr/state_empty

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040183    # @attr/clearableEditTextStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    aget-object p1, p1, p2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 8
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 9
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p3}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setForceDarkAllowed(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-boolean p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p2, v0

    :cond_0
    if-eq p3, p2, :cond_1

    .line 13
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 14
    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-nez v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    move-result v0

    .line 16
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    .line 27
    move-result v3

    .line 30
    add-int/2addr v3, v0

    .line 31
    int-to-float v0, v3

    .line 32
    cmpg-float v0, v2, v0

    .line 33
    if-gez v0, :cond_2

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    move-result v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    move-result v2

    .line 45
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    .line 46
    move-result v3

    .line 49
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    .line 50
    move-result v4

    .line 53
    sub-int/2addr v3, v4

    .line 54
    sub-int/2addr v3, v0

    .line 55
    int-to-float v0, v3

    .line 56
    cmpl-float v0, v2, v0

    .line 57
    if-lez v0, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 66
    move v0, v1

    .line 68
    :goto_1
    if-nez v0, :cond_3

    .line 69
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_4

    .line 75
    :cond_3
    const/4 v1, 0x1

    .line 77
    :cond_4
    return v1
    .line 78
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onButtonTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 16
    if-eqz p1, :cond_3

    .line 18
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 29
    if-eqz p1, :cond_3

    .line 31
    const-string p1, ""

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 38
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 40
    invoke-static {p0, p1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 42
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 45
    return v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    .line 48
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 54
    if-eqz p1, :cond_3

    .line 56
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 58
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 60
    return p0
    .line 62
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    sget-object p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    .line 12
    invoke-static {p1, p0}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    .line 14
    :cond_0
    return-object p1
    .line 17
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 11
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 13
    move-result p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-lez p1, :cond_0

    .line 18
    move p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eq v0, p1, :cond_1

    .line 23
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 25
    xor-int/2addr p1, v1

    .line 27
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    if-nez p2, :cond_0

    .line 4
    if-nez p3, :cond_0

    .line 6
    if-nez p4, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    const-string p1, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
    .line 7
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
