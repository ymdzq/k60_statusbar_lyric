.class public final Lmiuix/preference/RadioSetPreferenceCategory$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/RadioSetPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 2
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 8
    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 9
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-interface {p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final onPreferenceChangeInternal(Landroidx/preference/TwoStatePreference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 2
    iget-object p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/TwoStatePreference;Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method
