.class public Lmiuix/preference/RadioSetPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public mChecked:Z

.field public mCheckedSet:Z

.field public mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field public final mInternalListenerProxy:Lmiuix/preference/RadioSetPreferenceCategory$1;

.field public final mPrimaryKey:Ljava/lang/String;

.field public mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const v0, 0x7f0405e9    # @attr/preferenceCategoryCheckableStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v1, Lmiuix/preference/RadioSetPreferenceCategory$1;

    .line 8
    invoke-direct {v1, p0}, Lmiuix/preference/RadioSetPreferenceCategory$1;-><init>(Lmiuix/preference/RadioSetPreferenceCategory;)V

    .line 10
    iput-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/RadioSetPreferenceCategory$1;

    .line 13
    sget-object v1, Lmiuix/preference/R$styleable;->RadioSetPreferenceCategory:[I

    .line 15
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 25
    iput-object p2, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final addPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryKey:Ljava/lang/String;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_5

    .line 10
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    move-object v0, p1

    .line 16
    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 17
    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 19
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/RadioSetPreferenceCategory$1;

    .line 21
    iput-object v1, v0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p1, "The first preference must be RadioButtonPreference, if primary key is empty"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_1
    iget-object v1, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 42
    if-eqz v0, :cond_3

    .line 44
    if-ne v0, p1, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string p1, "must not have two primary preference"

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 56
    :cond_3
    :goto_0
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 57
    if-eqz v0, :cond_4

    .line 59
    move-object v0, p1

    .line 61
    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 62
    iput-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 64
    iget-object v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListenerProxy:Lmiuix/preference/RadioSetPreferenceCategory$1;

    .line 66
    iput-object v1, v0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 68
    goto :goto_1

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string p1, "Primary preference must be RadioButtonPreference"

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 78
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    .line 79
    return-void
    .line 82
.end method

.method public final isChecked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 2
    return p0
    .line 4
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    .line 12
    if-nez v0, :cond_2

    .line 14
    :cond_1
    iput-boolean p1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mChecked:Z

    .line 16
    iput-boolean v1, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mCheckedSet:Z

    .line 18
    :cond_2
    return-void
    .line 20
.end method

.method public final toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    .line 8
    return-void
    .line 11
.end method
