.class Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;
.super Lcom/android/systemui/tuner/SelectablePreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBinding:Z

.field public final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 5
    iget-object p2, p2, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    const p2, 0x7f130bd7    # @string/tuner_app '%1$s app'

    .line 12
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 23
    return-void
    .line 26
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 7
    return-void
    .line 10
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    .line 13
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/SelectablePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    .line 25
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 27
    return-void
    .line 30
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
