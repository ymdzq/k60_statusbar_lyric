.class public Lmiuix/androidbasewidget/widget/CheckedTextView;
.super Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawCheckMark:Z

.field public mDrawTextOffsetInRtl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a0    # @android:attr/state_checked

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8    # @android:attr/checkedTextViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 6
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p2

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p2, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p2

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p0, p1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070a4a    # @dimen/miuix_appcompat_checked_text_view_addition_margin '14.0dp'

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    return-void
.end method

.method private getCheckWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result p0

    .line 17
    :goto_0
    return p0
    .line 18
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 12
    const p1, 0x7f070a4a    # @dimen/miuix_appcompat_checked_text_view_addition_margin '14.0dp'

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 16
    return-void
    .line 19
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    sget-object p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 14
    invoke-static {p1, p0}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 16
    :cond_0
    return-object p1
    .line 19
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move v2, v1

    .line 11
    :goto_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 12
    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 26
    move-result v3

    .line 29
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingLeft()I

    .line 32
    move-result v4

    .line 35
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getScrollX()I

    .line 36
    move-result v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    .line 41
    move-result v4

    .line 44
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingRight()I

    .line 45
    move-result v5

    .line 48
    sub-int/2addr v4, v5

    .line 49
    sub-int/2addr v4, v3

    .line 50
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getScrollX()I

    .line 51
    move-result v5

    .line 54
    :goto_1
    add-int/2addr v5, v4

    .line 55
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    .line 56
    move-result v4

    .line 59
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    .line 60
    move-result v6

    .line 63
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingBottom()I

    .line 64
    move-result v7

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 68
    move-result v8

    .line 71
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 72
    move-result-object v9

    .line 75
    instance-of v9, v9, Landroid/graphics/drawable/NinePatchDrawable;

    .line 76
    if-eqz v9, :cond_2

    .line 78
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    .line 80
    move-result v6

    .line 83
    sub-int/2addr v6, v4

    .line 84
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingBottom()I

    .line 85
    move-result v7

    .line 88
    sub-int v8, v6, v7

    .line 89
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    .line 92
    move-result v9

    .line 95
    and-int/lit8 v9, v9, 0x70

    .line 96
    const/16 v10, 0x10

    .line 98
    if-eq v9, v10, :cond_4

    .line 100
    const/16 v6, 0x50

    .line 102
    if-eq v9, v6, :cond_3

    .line 104
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    .line 107
    move-result v4

    .line 110
    sub-int/2addr v4, v8

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    .line 113
    move-result v4

    .line 116
    sub-int/2addr v4, v6

    .line 117
    sub-int/2addr v4, v7

    .line 118
    sub-int/2addr v4, v8

    .line 119
    div-int/lit8 v4, v4, 0x2

    .line 120
    add-int/2addr v4, v6

    .line 122
    :goto_2
    add-int/2addr v3, v5

    .line 123
    add-int/2addr v8, v4

    .line 124
    invoke-virtual {v0, v5, v4, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    :cond_5
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 131
    move-result-object v0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    move-result-object v0

    .line 144
    const-class v1, Landroid/graphics/drawable/StateListDrawable;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 147
    move-result v0

    .line 150
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 151
    goto :goto_3

    .line 153
    :cond_6
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 154
    :goto_3
    if-eqz v2, :cond_7

    .line 156
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 158
    if-eqz v0, :cond_7

    .line 160
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 162
    if-eqz v0, :cond_7

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    .line 169
    move-result v0

    .line 172
    int-to-float v0, v0

    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    if-eqz v2, :cond_8

    .line 181
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 183
    if-eqz v0, :cond_8

    .line 185
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 187
    if-eqz p0, :cond_8

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    :cond_8
    return-void
    .line 194
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    .line 6
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_0

    .line 21
    iput-boolean v3, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 25
    move-result p1

    .line 28
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    move-result p1

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getMeasuredHeight()I

    .line 36
    move-result p1

    .line 39
    invoke-virtual {p0, v1, p1}, Landroid/widget/CheckedTextView;->setMeasuredDimension(II)V

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingEnd()I

    .line 44
    move-result v2

    .line 47
    sub-int v2, v0, v2

    .line 48
    mul-int/lit8 v4, v1, 0x2

    .line 50
    if-ge v2, v4, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v3, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 58
    :cond_2
    :goto_0
    sub-int/2addr v0, v1

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 61
    move-result p1

    .line 64
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 65
    move-result p1

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 69
    if-nez v1, :cond_3

    .line 72
    return-void

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    .line 75
    move-result p1

    .line 78
    add-int/2addr p1, v1

    .line 79
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getMeasuredHeight()I

    .line 80
    move-result p2

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckedTextView;->setMeasuredDimension(II)V

    .line 84
    return-void
    .line 87
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v1

    .line 29
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 30
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 49
    :cond_2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
    .line 54
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

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
