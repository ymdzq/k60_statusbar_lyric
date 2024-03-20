.class public Lmiuix/visual/check/VisualCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VisualCheckedTextView.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;
    }
.end annotation


# static fields
.field private static CHECKED_STATE:[I

.field private static UNCHECKED_STATE:[I


# instance fields
.field private iCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private mChecked:Z

.field private mCheckedColor:I

.field private mColorProperty:Lmiuix/animation/property/ColorProperty;

.field private mListener:Lmiuix/animation/listener/TransitionListener;

.field private mTextColorId:I

.field private mUncheckedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0    # @android:attr/state_checked

    .line 46
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    const v0, -0x10100a0

    .line 47
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/visualcheck/R$color;->visual_check_textview_unchecked_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/visualcheck/R$color;->visual_check_textview_checked_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    .line 79
    new-instance v0, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;

    invoke-direct {v0, p0}, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;-><init>(Lmiuix/visual/check/VisualCheckedTextView;)V

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    .line 80
    new-instance v0, Lmiuix/animation/property/ColorProperty;

    const-string v1, "checkedTextView"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const-string v0, "text_color_checked"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const-string v1, "text_color_unchecked"

    .line 82
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 83
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    .line 84
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    .line 85
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/VisualCheckedTextView;->initTextColorId(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initTextColorId(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 67
    sget-object v0, Lmiuix/visualcheck/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    sget p2, Lmiuix/visualcheck/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mTextColorId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mTextColorId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    return p0
.end method

.method public onChecked(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    if-eqz p1, :cond_0

    .line 121
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 1

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 105
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    iget-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    iget v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    iget v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    iget-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    iget v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    iget v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void
.end method
