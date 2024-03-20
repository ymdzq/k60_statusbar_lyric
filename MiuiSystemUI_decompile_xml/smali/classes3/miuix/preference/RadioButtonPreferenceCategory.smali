.class public Lmiuix/preference/RadioButtonPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

.field public final mInternalListener:Lmiuix/preference/RadioButtonPreferenceCategory$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 6
    new-instance p1, Lmiuix/preference/RadioButtonPreferenceCategory$1;

    .line 8
    invoke-direct {p1, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$1;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    .line 10
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/RadioButtonPreferenceCategory$1;

    .line 13
    return-void
    .line 15
.end method

.method public static parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
    .locals 3

    .line 1
    instance-of v0, p0, Lmiuix/preference/RadioButtonPreference;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 7
    instance-of v2, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    new-instance p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 13
    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 15
    invoke-direct {p0, v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Landroidx/preference/Preference;I)V

    .line 17
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 21
    check-cast p0, Lmiuix/preference/RadioButtonPreference;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Landroidx/preference/Preference;I)V

    .line 26
    return-object v0

    .line 29
    :cond_1
    instance-of v0, p0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 34
    check-cast p0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 36
    invoke-direct {v0, p0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Landroidx/preference/Preference;I)V

    .line 38
    return-object v0

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string v0, "Only RadioButtonPreference or RadioSetPreferenceCategory can be added to RadioButtonPreferenceCategory"

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    .line 49
.end method


# virtual methods
.method public final addPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 2
    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    .line 6
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/RadioButtonPreferenceCategory$1;

    .line 9
    iget v1, v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->$r8$classId:I

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v1, v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 17
    check-cast v1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 19
    iput-object p1, v1, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 21
    goto :goto_1

    .line 23
    :goto_0
    iget-object v1, v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 24
    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 26
    iput-object p1, v1, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 28
    :goto_1
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 36
    if-nez p1, :cond_0

    .line 38
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 40
    goto :goto_2

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    const-string p1, "Already has a checked item, please check state of new add preference"

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 50
    :cond_1
    :goto_2
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 52
.end method

.method public final removePreference(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 16
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 25
    :cond_0
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 28
    :cond_1
    return-void
    .line 30
.end method
