.class public Lcom/android/settingslib/widget/AppSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const p1, 0x7f0d02cc    # @layout/preference_app 'res/layout/preference_app.xml'

    .line 5
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const p0, 0x1020040    # @android:id/switch_widget

    .line 5
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
