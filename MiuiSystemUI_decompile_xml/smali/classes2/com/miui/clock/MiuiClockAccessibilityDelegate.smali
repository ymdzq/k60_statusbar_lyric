.class public final Lcom/miui/clock/MiuiClockAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFancyColon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    const v0, 0x7f130738    # @string/miui_clock_fancy_colon ''

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->mFancyColon:Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    .line 5
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->replaceFancyColon(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 5
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->replaceFancyColon(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->replaceFancyColon(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    .line 13
    move-result-object p1

    .line 16
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->replaceFancyColon(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final replaceFancyColon(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/miui/clock/MiuiClockAccessibilityDelegate;->mFancyColon:Ljava/lang/String;

    .line 6
    const-string v0, ":"

    .line 8
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
