.class public Landroidx/leanback/widget/GuidedActionEditText;
.super Landroid/widget/EditText;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mNoPaddingDrawable:Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

.field public final mSavedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e    # @android:attr/editTextStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    new-instance p1, Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

    invoke-direct {p1}, Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 2
    return-void
    .line 5
.end method

.method public getAutofillType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 21
    :cond_1
    return-void
    .line 24
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    const-class p0, Landroid/widget/EditText;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const-class p0, Landroid/widget/TextView;

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    return-void
    .line 23
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->isInTouchMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/EditText;->isTextSelectable()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 2
    return-void
    .line 5
.end method

.method public setImeKeyListener(Landroidx/leanback/widget/ImeKeyMonitor$ImeKeyListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnAutofillListener(Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
