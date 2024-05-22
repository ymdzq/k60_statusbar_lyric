.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084    # @android:attr/textViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0407fc    # @attr/textAppearanceLineHeightEnabled

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 7
    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 9
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 10
    invoke-virtual {v1, p2, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x2

    .line 11
    filled-new-array {v2, v5}, [I

    move-result-object v6

    const/4 v7, -0x1

    move v8, v0

    move v9, v7

    :goto_2
    if-ge v8, v5, :cond_2

    if-gez v9, :cond_2

    .line 12
    aget v9, v6, v8

    invoke-static {p1, v4, v9, v7}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v9, v7, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-nez v2, :cond_4

    .line 14
    invoke-virtual {v1, p2, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v7, :cond_4

    .line 17
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x2

    .line 13
    filled-new-array {v0, v1}, [I

    .line 14
    move-result-object v0

    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_0

    .line 21
    if-gez v4, :cond_0

    .line 23
    aget v4, v0, v3

    .line 25
    invoke-static {p2, p1, v4, v2}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 27
    move-result v4

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    if-ltz v4, :cond_1

    .line 37
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    const v0, 0x7f0407fc    # @attr/textAppearanceLineHeightEnabled

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 14
    const/16 v2, 0x12

    .line 16
    if-ne v1, v2, :cond_1

    .line 18
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method
