.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# static fields
.field static spanTypeface:Landroid/graphics/Typeface;


# instance fields
.field public accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

.field public onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 4
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 6
    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 7
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 11
    new-instance p2, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {p2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 12
    invoke-direct {p1, p2}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 13
    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 14
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 6
    instance-of v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    return v2

    .line 26
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public final drawableStateChanged()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    aget-object v4, v1, v3

    .line 17
    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-void
    .line 33
.end method

.method public getOnLinkClickListener()Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lcom/google/android/setupdesign/view/RichTextView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 6
    move-result-object p0

    .line 9
    instance-of v1, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    .line 14
    move-object v1, p0

    .line 16
    check-cast v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    .line 17
    iget-object v1, v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEvent:Landroid/view/MotionEvent;

    .line 19
    if-ne v1, p1, :cond_0

    .line 21
    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    .line 23
    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    .line 25
    return p0

    .line 27
    :cond_0
    return v0
    .line 28
.end method

.method public setOnLinkClickListener(Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setSpanTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    .line 2
    return-void
    .line 4
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, p1, Landroid/text/Spanned;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_5

    .line 9
    new-instance v1, Landroid/text/SpannableString;

    .line 11
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 16
    move-result p1

    .line 19
    const-class v3, Landroid/text/Annotation;

    .line 20
    invoke-virtual {v1, v2, p1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, [Landroid/text/Annotation;

    .line 26
    array-length v3, p1

    .line 28
    move v4, v2

    .line 29
    :goto_0
    if-ge v4, v3, :cond_4

    .line 30
    aget-object v5, p1, v4

    .line 32
    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 37
    const-string/jumbo v7, "textAppearance"

    .line 38
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v7

    .line 54
    const-string/jumbo v8, "style"

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v9

    .line 61
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-result v6

    .line 65
    if-nez v6, :cond_0

    .line 66
    const-string v7, "Cannot find resource: "

    .line 68
    const-string v8, "RichTextView"

    .line 70
    invoke-static {v7, v6, v8}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    :cond_0
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    .line 75
    invoke-direct {v7, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 77
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 80
    move-result-object v6

    .line 83
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    .line 84
    move-result v7

    .line 87
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    .line 88
    move-result v8

    .line 91
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 92
    aget-object v5, v6, v2

    .line 95
    invoke-virtual {v1, v5, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    goto :goto_3

    .line 100
    :cond_1
    const-string v7, "link"

    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    new-instance v6, Lcom/google/android/setupdesign/span/LinkSpan;

    .line 109
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 111
    invoke-direct {v6}, Lcom/google/android/setupdesign/span/LinkSpan;-><init>()V

    .line 114
    sget-object v7, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    .line 117
    if-eqz v7, :cond_2

    .line 119
    new-instance v7, Landroid/text/style/TypefaceSpan;

    .line 121
    sget-object v8, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    .line 123
    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 125
    goto :goto_1

    .line 128
    :cond_2
    new-instance v7, Landroid/text/style/TypefaceSpan;

    .line 129
    const-string v8, "sans-serif-medium"

    .line 131
    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 133
    :goto_1
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 139
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    .line 140
    move-result v7

    .line 143
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    .line 144
    move-result v8

    .line 147
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 148
    move v5, v2

    .line 151
    :goto_2
    const/4 v9, 0x2

    .line 152
    if-ge v5, v9, :cond_3

    .line 153
    aget-object v9, v6, v5

    .line 155
    invoke-virtual {v1, v9, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 157
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_2

    .line 162
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_4
    move-object p1, v1

    .line 167
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 168
    instance-of p2, p1, Landroid/text/Spanned;

    .line 171
    if-eqz p2, :cond_6

    .line 173
    move-object p2, p1

    .line 175
    check-cast p2, Landroid/text/Spanned;

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 178
    move-result p1

    .line 181
    const-class v0, Landroid/text/style/ClickableSpan;

    .line 182
    invoke-interface {p2, v2, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 184
    move-result-object p1

    .line 187
    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 188
    array-length p1, p1

    .line 190
    if-lez p1, :cond_6

    .line 191
    const/4 p1, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    move p1, v2

    .line 195
    :goto_4
    if-eqz p1, :cond_7

    .line 196
    new-instance p2, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    .line 198
    invoke-direct {p2}, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;-><init>()V

    .line 200
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 203
    goto :goto_5

    .line 206
    :cond_7
    const/4 p2, 0x0

    .line 207
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 208
    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRevealOnFocusHint(Z)V

    .line 214
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 217
    return-void
    .line 220
.end method
