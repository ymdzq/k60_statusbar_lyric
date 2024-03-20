.class public final Lmiuix/preference/RadioButtonPreferenceCategory$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;)V

    .line 11
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_1

    .line 25
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 31
    move-result-object v3

    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    return-void
    .line 41
.end method

.method public final onPreferenceChangeInternal(Landroidx/preference/TwoStatePreference;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/widget/Checkable;

    .line 3
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 5
    iget-object v1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 7
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_7

    .line 10
    iget-object v3, p1, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 12
    instance-of v4, v3, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 14
    if-eqz v4, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, p1

    .line 19
    :goto_0
    iget-object v4, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 20
    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v4}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 24
    move-result-object v4

    .line 27
    if-eq v3, v4, :cond_6

    .line 28
    :cond_1
    iget-object v4, v3, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 30
    const/4 v5, 0x0

    .line 32
    if-eqz v4, :cond_3

    .line 33
    invoke-interface {v4, v3, p2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 35
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    move p2, v5

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    move p2, v2

    .line 44
    :goto_2
    if-eqz p2, :cond_6

    .line 45
    invoke-static {p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 51
    move-result p2

    .line 54
    if-eqz p2, :cond_4

    .line 55
    goto :goto_4

    .line 57
    :cond_4
    invoke-virtual {p1, v2}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->setChecked(Z)V

    .line 58
    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;)V

    .line 61
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    .line 64
    move-result p2

    .line 67
    if-eqz p2, :cond_6

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 70
    move-result p2

    .line 73
    :goto_3
    if-ge v5, p2, :cond_6

    .line 74
    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 76
    move-result-object v3

    .line 79
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    .line 80
    move-result-object v4

    .line 83
    if-ne v3, v4, :cond_5

    .line 84
    goto :goto_4

    .line 86
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 87
    goto :goto_3

    .line 89
    :cond_6
    :goto_4
    invoke-interface {v1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)V

    .line 90
    :cond_7
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    .line 93
    move-result p0

    .line 96
    xor-int/2addr p0, v2

    .line 97
    return p0
    .line 98
.end method
