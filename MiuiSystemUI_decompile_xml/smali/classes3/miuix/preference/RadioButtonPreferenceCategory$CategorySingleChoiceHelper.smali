.class public final Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCategory:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Landroid/widget/Checkable;)V

    .line 4
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getPreference()Landroidx/preference/Preference;
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 8
    check-cast p0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 10
    return-object p0

    .line 12
    :goto_0
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 13
    check-cast p0, Lmiuix/preference/RadioButtonPreference;

    .line 15
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 18
.end method

.method public final setChecked(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 11
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Landroidx/preference/Preference;

    .line 14
    check-cast p0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 16
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mPrimaryPreference:Lmiuix/preference/RadioButtonPreference;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 22
    :cond_0
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
