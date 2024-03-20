.class public Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;
.super Landroidx/preference/Preference;
.source "FullScreenInputMethodPreference.java"


# instance fields
.field private mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

.field private mDefaultImageRes:I

.field private mDefaultTextRes:I

.field private mHighImageRes:I

.field private mHighKeyboardChecked:Z

.field private mHighTextRes:I

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget p1, Lcom/android/settings/R$layout;->full_screen_keyboard_optimization_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->checkgroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    .line 51
    iget-object v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->high_keyboard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    .line 52
    iget-object v1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->default_keyboard:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckBox;

    .line 53
    iget-object v2, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->high_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/visual/check/VisualCheckedTextView;

    .line 54
    iget-object v3, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->default_textview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/visual/check/VisualCheckedTextView;

    .line 55
    iget-object v4, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->high_imgview:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 56
    iget-object v5, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->default_imgview:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 58
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighKeyboardChecked:Z

    invoke-virtual {v0, v6}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighKeyboardChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 60
    iget v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighTextRes:I

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_1
    iget v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mDefaultTextRes:I

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :cond_2
    iget v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighImageRes:I

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :cond_3
    iget v0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mDefaultImageRes:I

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public setDefaultImage(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mDefaultImageRes:I

    return-void
.end method

.method public setDefaultText(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mDefaultTextRes:I

    return-void
.end method

.method public setHighImage(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighImageRes:I

    return-void
.end method

.method public setHighKeyboardChecked(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighKeyboardChecked:Z

    return-void
.end method

.method public setHighText(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mHighTextRes:I

    return-void
.end method

.method public setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    return-void
.end method
