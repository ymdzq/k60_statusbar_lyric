.class public Lcom/android/settings/accessibility/haptic/CustomInputHapticView;
.super Landroid/view/View;
.source "CustomInputHapticView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;
    }
.end annotation


# instance fields
.field private final mBgColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mText:Ljava/lang/String;

.field private mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmText(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchHelper(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    .line 39
    sget-object v0, Lcom/android/settings/R$styleable;->CustomA11yHapticView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->general_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 41
    sget v0, Lcom/android/settings/R$styleable;->CustomA11yHapticView_bg:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->input_view_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mBgColor:I

    .line 42
    sget v0, Lcom/android/settings/R$styleable;->CustomA11yHapticView_radius:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mRadius:I

    .line 43
    sget v0, Lcom/android/settings/R$styleable;->CustomA11yHapticView_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mText:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    new-instance p1, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;-><init>(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;

    .line 48
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 138
    const-class p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mRadius:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->input_view_cursor_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->custom_input_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->custom_input_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->custom_input_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->custom_input_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    .line 64
    iget-object v9, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
