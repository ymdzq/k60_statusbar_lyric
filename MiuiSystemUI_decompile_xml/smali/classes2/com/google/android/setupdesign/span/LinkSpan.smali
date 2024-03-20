.class public final Lcom/google/android/setupdesign/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    .line 8
    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    .line 12
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p0, v1

    .line 17
    :goto_0
    if-nez p0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    :goto_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    check-cast v0, Landroid/content/ContextWrapper;

    .line 28
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 37
    goto :goto_2

    .line 40
    :cond_2
    const-string p0, "LinkSpan"

    .line 41
    const-string v0, "Dropping click event. No listener attached."

    .line 43
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_2
    instance-of p0, p1, Landroid/widget/TextView;

    .line 48
    if-eqz p0, :cond_3

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 54
    move-result-object p0

    .line 57
    instance-of p1, p0, Landroid/text/Spannable;

    .line 58
    if-eqz p1, :cond_3

    .line 60
    check-cast p0, Landroid/text/Spannable;

    .line 62
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 64
    :cond_3
    return-void
    .line 67
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 6
    return-void
    .line 9
.end method
