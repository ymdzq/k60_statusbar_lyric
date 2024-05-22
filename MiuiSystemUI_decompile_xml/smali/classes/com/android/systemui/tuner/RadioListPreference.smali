.class public Lcom/android/systemui/tuner/RadioListPreference;
.super Lcom/android/systemui/tuner/CustomListPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "%s"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 19
    return-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final onDialogClosed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDialogCreated(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 4

    .line 1
    new-instance p1, Landroid/app/Dialog;

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 4
    const v1, 0x1030223    # @android:style/Theme.DeviceDefault.Settings

    .line 6
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    const v0, 0x10201c1    # @android:id/action_bar_container

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/Toolbar;

    .line 19
    new-instance v1, Landroid/view/View;

    .line 21
    iget-object v2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const v2, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 45
    const v3, 0x101030b    # @android:attr/homeAsUpIndicator

    .line 46
    filled-new-array {v3}, [I

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 53
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 65
    new-instance v2, Lcom/android/systemui/tuner/RadioListPreference$$ExternalSyntheticLambda0;

    .line 68
    invoke-direct {v2, p1}, Lcom/android/systemui/tuner/RadioListPreference$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    .line 76
    invoke-direct {v0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;-><init>()V

    .line 78
    iput-object p0, v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    .line 81
    iget-object p0, v0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 83
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update()V

    .line 87
    :cond_0
    const-class p0, Lcom/android/systemui/fragments/FragmentService;

    .line 90
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    check-cast p0, Lcom/android/systemui/fragments/FragmentService;

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 106
    move-result-object p0

    .line 109
    const v1, 0x1020002    # @android:id/content

    .line 110
    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 113
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    .line 117
    return-object p1
    .line 120
.end method

.method public final onDialogStateRestored(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    const v0, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 8
    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    .line 9
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/fragments/FragmentService;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iput-object p0, p1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    .line 33
    iget-object p0, p1, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 35
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update()V

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public final onPrepareDialogBuilder(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 5
    return-void
    .line 7
.end method
