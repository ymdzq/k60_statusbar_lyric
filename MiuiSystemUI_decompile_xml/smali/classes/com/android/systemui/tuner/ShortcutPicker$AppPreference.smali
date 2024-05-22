.class Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;
.super Lcom/android/systemui/tuner/SelectablePreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBinding:Z

.field public final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 5
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    .line 7
    move-result-object v0

    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f130be2    # @string/tuner_launch_app 'Launch %1$s'

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    .line 25
    move-result-object p2

    .line 28
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 32
    const v0, 0x7f130bdd    # @string/tuner_app '%1$s app'

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 40
    return-void
    .line 43
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

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
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 11
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    move-result-object v1

    .line 22
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/SelectablePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

    .line 33
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 35
    return-void
    .line 38
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 2
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
