.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAdapter:Landroid/widget/ArrayAdapter;

.field public final mItemSelectedListener:Landroidx/preference/DropDownPreference$1;

.field public mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const v0, 0x7f040285    # @attr/dropdownPreferenceStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Landroidx/preference/DropDownPreference$1;

    .line 8
    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$1;-><init>(Landroidx/preference/DropDownPreference;)V

    .line 10
    iput-object p2, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroidx/preference/DropDownPreference$1;

    .line 13
    new-instance p2, Landroid/widget/ArrayAdapter;

    .line 15
    const v0, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    .line 17
    invoke-direct {p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object p2, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 23
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 25
    iget-object p1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    array-length p2, p1

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-ge v0, p2, :cond_0

    .line 34
    aget-object v1, p1, v0

    .line 36
    iget-object v2, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    return-void
    .line 50
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object p0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    const v1, 0x7f0a08b0    # @id/spinner

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/Spinner;

    .line 11
    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 13
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 17
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 20
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroidx/preference/DropDownPreference$1;

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 24
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 27
    iget-object v1, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 31
    const/4 v3, -0x1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    if-eqz v2, :cond_1

    .line 36
    array-length v4, v2

    .line 38
    add-int/2addr v4, v3

    .line 39
    :goto_0
    if-ltz v4, :cond_1

    .line 40
    aget-object v5, v2, v4

    .line 42
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 47
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    move v3, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 62
    return-void
    .line 65
.end method

.method public final onClick()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 2
    invoke-virtual {p0}, Landroid/widget/Spinner;->performClick()Z

    .line 4
    return-void
    .line 7
.end method

.method public final setEntries([Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 6
    iget-object p1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    aget-object v2, p1, v1

    .line 17
    iget-object v3, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 19
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method
