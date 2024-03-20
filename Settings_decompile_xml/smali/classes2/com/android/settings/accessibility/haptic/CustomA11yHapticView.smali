.class public Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;
.super Landroid/view/View;
.source "CustomA11yHapticView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;
    }
.end annotation


# instance fields
.field private final mBgColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mText:Ljava/lang/String;

.field private mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmText(Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchHelper(Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;)Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mPaint:Landroid/graphics/Paint;

    .line 39
    sget-object v0, Lcom/android/settings/R$styleable;->CustomA11yHapticView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/android/settings/R$styleable;->CustomA11yHapticView_bg:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->input_view_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mBgColor:I

    .line 42
    sget p2, Lcom/android/settings/R$styleable;->CustomA11yHapticView_radius:I

    const/16 v0, 0x3c

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mRadius:I

    .line 43
    sget p2, Lcom/android/settings/R$styleable;->CustomA11yHapticView_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->haptic_experience:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mText:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    new-instance p1, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;-><init>(Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mTouchHelper:Lcom/android/settings/accessibility/haptic/CustomA11yHapticView$CustomViewTouchHelper;

    .line 48
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 124
    const-class p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mBgColor:I

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

    iget v0, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mRadius:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/settings/accessibility/haptic/CustomA11yHapticView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
