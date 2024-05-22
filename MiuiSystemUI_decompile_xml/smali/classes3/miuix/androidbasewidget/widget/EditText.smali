.class public Lmiuix/androidbasewidget/widget/EditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isAddListener:Z

.field public mCanVerticalScroll:Z

.field public mCurrentHandleAndCursorColor:I

.field public final mErrorWatcher:Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

.field public mOffsetHeight:I

.field public mReachEdgeFlag:Z

.field public final mTextHandleAndCursorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e    # @android:attr/editTextStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    .line 6
    new-instance v1, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    invoke-direct {v1, p0}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;)V

    iput-object v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    .line 7
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->EditText:[I

    const v2, 0x7f1406bb    # @style/Widget.EditText.DayNight

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060535    # @color/miuix_appcompat_handle_and_cursor_color_light '@color/miuix_color_blue_light_primary_default'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public final canVerticalScroll()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    .line 18
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    .line 23
    move-result v3

    .line 26
    sub-int/2addr v2, v3

    .line 27
    sub-int/2addr v1, v2

    .line 28
    iput v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mOffsetHeight:I

    .line 29
    const/4 p0, 0x0

    .line 31
    if-nez v1, :cond_0

    .line 32
    return p0

    .line 34
    :cond_0
    const/4 v2, 0x1

    .line 35
    if-gtz v0, :cond_1

    .line 36
    sub-int/2addr v1, v2

    .line 38
    if-ge v0, v1, :cond_2

    .line 39
    :cond_1
    move p0, v2

    .line 41
    :cond_2
    return p0
    .line 42
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    .line 9
    :cond_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 16
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->canVerticalScroll()Z

    .line 5
    move-result p1

    .line 8
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    .line 9
    return-void
    .line 11
.end method

.method public final onPreDraw()Z
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getHighlightColor()I

    .line 6
    move-result v1

    .line 9
    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 10
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 12
    move-result v2

    .line 15
    iget v3, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 16
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 18
    move-result v3

    .line 21
    iget v4, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 22
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 24
    move-result v4

    .line 27
    const/16 v5, 0x26

    .line 28
    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 30
    move-result v2

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 38
    move-result v1

    .line 41
    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 42
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 44
    move-result v2

    .line 47
    iget v3, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 48
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 50
    move-result v3

    .line 53
    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 54
    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 58
    :cond_0
    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    .line 61
    const/4 v2, -0x1

    .line 63
    if-eq v1, v2, :cond_1

    .line 64
    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 66
    if-eq v1, v2, :cond_4

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v3

    .line 81
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object v4

    .line 85
    filled-new-array {v1, v2, v3, v4}, [Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v5

    .line 89
    const/4 v6, 0x0

    .line 90
    :goto_0
    const/4 v7, 0x4

    .line 91
    if-ge v6, v7, :cond_3

    .line 92
    aget-object v7, v5, v6

    .line 94
    if-eqz v7, :cond_2

    .line 96
    iget v8, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 98
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    iget v7, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 105
    iput v7, p0, Lmiuix/androidbasewidget/widget/EditText;->mCurrentHandleAndCursorColor:I

    .line 107
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_4
    return v0
    .line 124
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->canVerticalScroll()Z

    .line 5
    move-result p1

    .line 8
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    .line 9
    iget p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mOffsetHeight:I

    .line 11
    if-eq p2, p1, :cond_0

    .line 13
    if-nez p2, :cond_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 24
    :cond_1
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    .line 28
    :cond_2
    return-void
    .line 30
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mCanVerticalScroll:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/EditText;->mReachEdgeFlag:Z

    .line 14
    if-nez p0, :cond_1

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const/4 p0, 0x1

    .line 20
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    const/4 p0, 0x0

    .line 27
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 28
    :cond_1
    :goto_0
    return p1
    .line 31
.end method

.method public setMiuiStyleError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p1

    .line 20
    const/16 v0, 0x194

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 23
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 26
    if-nez p1, :cond_1

    .line 28
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 31
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method
