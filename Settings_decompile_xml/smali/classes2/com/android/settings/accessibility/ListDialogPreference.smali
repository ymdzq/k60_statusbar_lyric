.class public abstract Lcom/android/settings/accessibility/ListDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;,
        Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;,
        Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntryTitles:[Ljava/lang/CharSequence;

.field private mEntryValues:[I

.field private mListItemLayout:I

.field private mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

.field private mValue:I

.field private mValueIndex:I

.field private mValueSet:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmEntryValues(Lcom/android/settings/accessibility/ListDialogPreference;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListItemLayout(Lcom/android/settings/accessibility/ListDialogPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getIndexForValue(I)I
    .locals 3

    .line 188
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    if-eqz p0, :cond_1

    .line 190
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    if-ltz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    return p0
.end method

.method protected getValueAt(I)I
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget p0, p0, p1

    return p0
.end method

.method protected abstract onBindListItem(Landroid/view/View;I)V
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 233
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 152
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v0

    .line 153
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 154
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter-IA;)V

    const v2, 0x102000a    # @android:id/list

    .line 155
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    const/4 v3, 0x1

    .line 157
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 158
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 176
    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 179
    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {p1, v1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    check-cast p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    .line 263
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 264
    iget p1, p1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    return-void

    .line 258
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 243
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 249
    :cond_0
    new-instance v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result p0

    iput p0, v1, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 238
    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    return-void
.end method

.method public setListItemLayoutResource(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 208
    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 209
    iget-boolean v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    if-nez v2, :cond_3

    .line 210
    :cond_1
    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

    if-eqz v0, :cond_3

    .line 219
    invoke-interface {v0, p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_3
    return-void
.end method

.method public setValues([I)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 93
    iget-boolean p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueSet:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 94
    iget p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    :cond_0
    return-void
.end method
