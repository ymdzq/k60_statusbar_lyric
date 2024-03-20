.class public final Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public pressedRippleColor:Landroid/content/res/ColorStateList;

.field public selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

.field public final synthetic this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    instance-of p2, p1, Landroid/widget/TextView;

    .line 6
    if-eqz p2, :cond_3

    .line 8
    move-object p2, p1

    .line 10
    check-cast p2, Landroid/widget/TextView;

    .line 11
    iget-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 13
    invoke-virtual {p3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 22
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p3

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p3, :cond_2

    .line 32
    iget-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 34
    iget p3, p3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 36
    if-eqz p3, :cond_0

    .line 38
    const/4 p3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p3, 0x0

    .line 42
    :goto_0
    if-eqz p3, :cond_2

    .line 43
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 45
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 47
    iget v1, v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 49
    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 51
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    .line 54
    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    .line 58
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 63
    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    .line 65
    invoke-direct {v1, p0, p3, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    move-object v0, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move-object v0, p3

    .line 72
    :cond_2
    :goto_1
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_3
    return-object p1
    .line 78
.end method

.method public final updateSelectedItemColorStateList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_1

    .line 14
    move-object v5, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const v3, 0x10100a7    # @android:attr/state_pressed

    .line 18
    filled-new-array {v3}, [I

    .line 21
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    move-result v0

    .line 28
    filled-new-array {v0, v2}, [I

    .line 29
    move-result-object v0

    .line 32
    new-array v5, v2, [I

    .line 33
    filled-new-array {v3, v5}, [[I

    .line 35
    move-result-object v3

    .line 38
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 39
    invoke-direct {v5, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 41
    :goto_1
    iput-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    .line 44
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 46
    iget v3, v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 48
    if-eqz v3, :cond_2

    .line 50
    move v3, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v2

    .line 54
    :goto_2
    if-eqz v3, :cond_4

    .line 55
    iget-object v0, v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    .line 57
    if-eqz v0, :cond_3

    .line 59
    goto :goto_3

    .line 61
    :cond_3
    move v1, v2

    .line 62
    :goto_3
    if-eqz v1, :cond_4

    .line 63
    const v1, 0x1010367    # @android:attr/state_hovered

    .line 65
    const v3, -0x10100a7

    .line 68
    filled-new-array {v1, v3}, [I

    .line 71
    move-result-object v1

    .line 74
    const v4, 0x10100a1    # @android:attr/state_selected

    .line 75
    filled-new-array {v4, v3}, [I

    .line 78
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 82
    move-result v0

    .line 85
    iget-object v4, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 86
    iget-object v4, v4, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    .line 88
    invoke-virtual {v4, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 90
    move-result v4

    .line 93
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 94
    iget v5, v5, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 96
    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 98
    move-result v0

    .line 101
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 102
    iget v5, v5, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 104
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 106
    move-result v4

    .line 109
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 110
    iget v5, v5, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    .line 112
    filled-new-array {v0, v4, v5}, [I

    .line 114
    move-result-object v0

    .line 117
    new-array v2, v2, [I

    .line 118
    filled-new-array {v3, v1, v2}, [[I

    .line 120
    move-result-object v1

    .line 123
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 124
    invoke-direct {v4, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 126
    :cond_4
    iput-object v4, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    .line 129
    return-void
    .line 131
.end method
