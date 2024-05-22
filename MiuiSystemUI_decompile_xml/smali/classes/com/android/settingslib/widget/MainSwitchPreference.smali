.class public Lcom/android/settingslib/widget/MainSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field public mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

.field public final mSwitchChangeListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 10
    const v1, 0x7f0d0343    # @layout/settingslib_main_switch_layout 'res/layout/settingslib_main_switch_layout.xml'

    .line 12
    iput v1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    if-eqz p2, :cond_0

    .line 20
    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 25
    move-result-object p1

    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const/16 p2, 0xf

    .line 37
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    move-result p2

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setIconSpaceReserved(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    :cond_0
    return-void
    .line 50
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 6
    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 8
    const v1, 0x7f0a086b    # @id/settingslib_main_switch_bar

    .line 10
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar;

    .line 17
    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 19
    new-instance v1, Lcom/android/settingslib/widget/MainSwitchPreference$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/MainSwitchPreference;)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->setIconSpaceReserved(Z)V

    .line 31
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 34
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    .line 38
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 41
    if-eqz p1, :cond_0

    .line 43
    iget-object v1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p1, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 60
    check-cast p1, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 67
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    .line 78
    iget-object v1, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 80
    iget-object v2, v1, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 82
    check-cast v2, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    iget-object v1, v1, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 92
    check-cast v1, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    return-void
    .line 100
.end method

.method public final onSwitchChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public final setChecked(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 9
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    .line 11
    move-result v0

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final setIconSpaceReserved(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setIconSpaceReserved(Z)V

    .line 15
    :cond_1
    return-void
    .line 18
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference;->mMainSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
