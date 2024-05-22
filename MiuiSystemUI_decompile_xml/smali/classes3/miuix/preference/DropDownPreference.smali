.class public Lmiuix/preference/DropDownPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;


# instance fields
.field public final mAdapter:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

.field public final mContentAdapter:Landroid/widget/ArrayAdapter;

.field public mEntries:[Ljava/lang/CharSequence;

.field public mEntryIcons:[Landroid/graphics/drawable/Drawable;

.field public mEntryValues:[Ljava/lang/CharSequence;

.field public final mItemSelectedListener:Lmiuix/preference/DropDownPreference$1;

.field public final mNotifyHandler:Landroid/os/Handler;

.field public mSpinner:Lmiuix/appcompat/widget/Spinner;

.field public mValue:Ljava/lang/String;

.field public mValueSet:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    const-class v1, Landroid/util/AttributeSet;

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const v0, 0x7f040285    # @attr/dropdownPreferenceStyle

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance v2, Landroid/os/Handler;

    .line 9
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 11
    iput-object v2, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 14
    new-instance v2, Lmiuix/preference/DropDownPreference$1;

    .line 16
    invoke-direct {v2, p0}, Lmiuix/preference/DropDownPreference$1;-><init>(Lmiuix/preference/DropDownPreference;)V

    .line 18
    iput-object v2, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Lmiuix/preference/DropDownPreference$1;

    .line 21
    sget-object v2, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    .line 23
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    move-result-object v0

    .line 49
    const-class v3, Landroid/widget/ArrayAdapter;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 52
    move-result-object v0

    .line 55
    sget-object v3, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 58
    move-result-object v0

    .line 61
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 73
    check-cast p2, Landroid/widget/ArrayAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iput-object p2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 76
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    const-string p2, "Can\'t find Adapter: "

    .line 82
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 87
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    throw p1

    .line 91
    :catch_1
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    const-string p2, "Can\'t access non-public constructor "

    .line 95
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 100
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    throw p1

    .line 104
    :catch_2
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    const-string p2, "Could not instantiate the Adapter: "

    .line 108
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 113
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    throw p1

    .line 117
    :catch_3
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    const-string p2, "Error creating Adapter "

    .line 121
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 126
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    throw p1

    .line 130
    :cond_0
    new-instance v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 131
    invoke-direct {v0, p1, p2}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 136
    :goto_0
    new-instance p2, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 138
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 140
    new-instance v2, Lmiuix/preference/DropDownPreference$4;

    .line 142
    invoke-direct {v2, p0, v0}, Lmiuix/preference/DropDownPreference$4;-><init>(Lmiuix/preference/DropDownPreference;Ljava/lang/Object;)V

    .line 144
    const v3, 0x7f0d0224    # @layout/miuix_appcompat_simple_spinner_layout_integrated 'res/layout/miuix_appcompat_simple_spinner_layout_integrated.xml'

    .line 147
    invoke-direct {p2, p1, v3, v0, v2}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    .line 150
    iput-object p2, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 153
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 155
    instance-of p2, p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 157
    if-eqz p2, :cond_1

    .line 159
    check-cast p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 161
    iget-object p2, p1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 163
    iput-object p2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 165
    iget-object p2, p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 167
    iput-object p2, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 169
    iget-object p1, p1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 173
    goto :goto_2

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 176
    move-result p1

    .line 179
    iget-object p2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 180
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 182
    move-result p2

    .line 185
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 186
    iput-object p2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 188
    :goto_1
    if-ge v1, p1, :cond_2

    .line 190
    iget-object p2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 192
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 196
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 203
    aput-object v0, p2, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    .line 206
    goto :goto_1

    .line 208
    :cond_2
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 209
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 211
    :goto_2
    return-void
    .line 213
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lmiuix/preference/DropDownPreference$2;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lmiuix/preference/DropDownPreference$2;-><init>(Lmiuix/preference/DropDownPreference;I)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    const v0, 0x7f0a08b0    # @id/spinner

    .line 10
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    .line 19
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 21
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setImportantForAccessibility(I)V

    .line 24
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 27
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setLongClickable(Z)V

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setContextClickable(Z)V

    .line 36
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 39
    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 41
    invoke-virtual {v0, v3}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 43
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 46
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 49
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 52
    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 56
    if-eqz v4, :cond_1

    .line 58
    :goto_0
    iget-object v4, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 60
    array-length v5, v4

    .line 62
    if-ge v2, v5, :cond_1

    .line 63
    aget-object v4, v4, v2

    .line 65
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, -0x1

    .line 77
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 78
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 81
    new-instance v2, Lmiuix/preference/DropDownPreference$2;

    .line 83
    const/4 v3, 0x1

    .line 85
    invoke-direct {v2, p0, v3}, Lmiuix/preference/DropDownPreference$2;-><init>(Lmiuix/preference/DropDownPreference;I)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 92
    new-instance v2, Lmiuix/preference/DropDownPreference$4;

    .line 94
    invoke-direct {v2, p0, p1}, Lmiuix/preference/DropDownPreference$4;-><init>(Lmiuix/preference/DropDownPreference;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    .line 99
    new-instance v0, Lmiuix/preference/DropDownPreference$5;

    .line 102
    invoke-direct {v0, p0}, Lmiuix/preference/DropDownPreference$5;-><init>(Lmiuix/preference/DropDownPreference;)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    :cond_2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 110
    return-void
    .line 113
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    const-class v1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    return-void

    .line 17
    :cond_0
    check-cast p1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 18
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 20
    move-result-object v0

    .line 23
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 24
    iget-object p1, p1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 29
    return-void
    .line 32
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 3
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 5
    iget-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 12
    invoke-direct {v1, v0}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 14
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 17
    iput-object p0, v1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    .line 19
    return-object v1
    .line 21
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method public final performClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 6
    const-string p0, "DropDownPreference"

    .line 9
    const-string p1, "trigger from perform click"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-boolean v2, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 12
    if-nez v2, :cond_1

    .line 14
    :cond_0
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 18
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)V

    .line 20
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    .line 25
    :cond_1
    return-void
    .line 28
.end method
