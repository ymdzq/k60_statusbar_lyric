.class public Lmiuix/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public mChangeFromClick:Z

.field public final mEnableFallbackLineSpacing:Z

.field public mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field public mItemView:Landroid/view/View;

.field public mRadioButton:Landroid/view/View;

.field public mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x7f04062e    # @attr/radioButtonPreferenceStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 9
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/TwoStatePreference;Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_1
    if-nez v1, :cond_2

    .line 24
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 26
    if-eqz p1, :cond_2

    .line 28
    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 30
    :cond_2
    return v1
    .line 32
.end method

.method public final notifyChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 20
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 22
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 28
    :cond_2
    return-void
    .line 30
.end method

.method public final onAttached()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 5
    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const v0, 0x7f0d0231    # @layout/miuix_preference_radiobutton 'res/layout/miuix_preference_radiobutton.xml'

    .line 11
    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f0d0232    # @layout/miuix_preference_radiobutton_two_state_background 'res/layout/miuix_preference_radiobutton_two_state_background.xml'

    .line 17
    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 20
    :goto_0
    return-void
    .line 22
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    .line 7
    const v0, 0x1020016    # @android:id/title

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 16
    instance-of v1, v0, Landroid/widget/TextView;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iget-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    .line 26
    :cond_0
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 29
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/widget/Checkable;

    .line 35
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 37
    move-result v1

    .line 40
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 41
    :cond_1
    const v0, 0x1020010    # @android:id/summary

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 51
    if-eqz v1, :cond_2

    .line 53
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/widget/Checkable;

    .line 56
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 58
    move-result v2

    .line 61
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 62
    :cond_2
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 65
    if-eqz v1, :cond_3

    .line 67
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 71
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    new-instance v1, Lmiuix/preference/RadioButtonPreference$1;

    .line 83
    invoke-direct {v1}, Lmiuix/preference/RadioButtonPreference$1;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 88
    :cond_3
    const v0, 0x1020001    # @android:id/checkbox

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 97
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 98
    if-eqz v0, :cond_5

    .line 100
    const/4 v1, 0x2

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 103
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 106
    instance-of v0, v0, Landroid/widget/CompoundButton;

    .line 108
    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 112
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 118
    check-cast p0, Landroid/widget/CompoundButton;

    .line 120
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 122
    move-result-object p0

    .line 125
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    .line 126
    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 130
    move-result-object p0

    .line 133
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 134
    if-eqz v0, :cond_5

    .line 136
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 140
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 149
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 152
    :cond_5
    filled-new-array {p1}, [Landroid/view/View;

    .line 155
    move-result-object p0

    .line 158
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 159
    move-result-object p0

    .line 162
    invoke-interface {p0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 163
    move-result-object p0

    .line 166
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 167
    invoke-interface {p0, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 169
    move-result-object p0

    .line 172
    const/4 v0, 0x0

    .line 173
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 174
    invoke-interface {p0, p1, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 176
    return-void
    .line 179
.end method

.method public final onClick()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 3
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetached()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 9
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 25
    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 26
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
    .line 35
.end method

.method public final queueIdle()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 8
    return-void
    .line 11
.end method
