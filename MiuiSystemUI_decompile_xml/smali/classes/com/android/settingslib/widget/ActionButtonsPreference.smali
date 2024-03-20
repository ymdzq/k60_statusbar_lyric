.class public Lcom/android/settingslib/widget/ActionButtonsPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBtnBackgroundStyle1:Ljava/util/List;

.field public final mBtnBackgroundStyle2:Ljava/util/List;

.field public final mBtnBackgroundStyle3:Ljava/util/List;

.field public final mBtnBackgroundStyle4:Ljava/util/List;

.field public final mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public mDivider1:Landroid/view/View;

.field public mDivider2:Landroid/view/View;

.field public mDivider3:Landroid/view/View;

.field public final mVisibleButtonInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 5
    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 10
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 12
    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 17
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 19
    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 24
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 26
    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    const/4 p2, 0x4

    .line 35
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x1

    .line 43
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x2

    .line 51
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    const/4 v2, 0x3

    .line 59
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    iput-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iput-object v2, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 70
    const p2, 0x7f0d033d    # @layout/settingslib_action_buttons 'res/layout/settingslib_action_buttons.xml'

    .line 72
    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 75
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 78
    iget-object p2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p2

    .line 86
    const v3, 0x7f03000c    # @array/background_style1

    .line 87
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 90
    move-result-object v3

    .line 93
    invoke-virtual {p0, p1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 94
    const p1, 0x7f03000d    # @array/background_style2

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 100
    move-result-object p1

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 104
    const p1, 0x7f03000e    # @array/background_style3

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {p0, v1, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 114
    const p1, 0x7f03000f    # @array/background_style4

    .line 117
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 120
    move-result-object p1

    .line 123
    invoke-virtual {p0, v2, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 124
    return-void
    .line 127
.end method

.method public static setupBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 13
    iget-object v1, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public static setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    if-ltz v0, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    sub-int/2addr v1, v0

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 21
    iget-object v1, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    return-void
    .line 35
.end method


# virtual methods
.method public final fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 12
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v2

    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final notifyChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 6
    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 10
    const v1, 0x7f0a01a1    # @id/button1

    .line 12
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/Button;

    .line 19
    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 23
    const v1, 0x7f0a01a2    # @id/button2

    .line 25
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/Button;

    .line 32
    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 36
    const v1, 0x7f0a01a3    # @id/button3

    .line 38
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/Button;

    .line 45
    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 49
    const v1, 0x7f0a01a4    # @id/button4

    .line 51
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/Button;

    .line 58
    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0a02e4    # @id/divider1

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    .line 69
    const v0, 0x7f0a02e5    # @id/divider2

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    .line 78
    const v0, 0x7f0a02e6    # @id/divider3

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    .line 87
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 89
    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 91
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 94
    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 96
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 99
    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 101
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 104
    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 109
    check-cast p1, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    move-result p1

    .line 116
    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 119
    check-cast p1, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout()V

    .line 126
    return-void
    .line 129
.end method

.method public final updateLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 10
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 19
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 27
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 36
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 44
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 53
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 80
    move-result v0

    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x1

    .line 85
    if-ne v0, v2, :cond_4

    .line 86
    move v0, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v0, v1

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 91
    check-cast v3, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result v3

    .line 98
    if-eq v3, v2, :cond_b

    .line 99
    const/4 v4, 0x2

    .line 101
    if-eq v3, v4, :cond_9

    .line 102
    const/4 v4, 0x3

    .line 104
    if-eq v3, v4, :cond_7

    .line 105
    const/4 v4, 0x4

    .line 107
    if-eq v3, v4, :cond_5

    .line 108
    const-string v0, "ActionButtonPreference"

    .line 110
    const-string v3, "No visible buttons info, skip background settings."

    .line 112
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_1

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 120
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 122
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 124
    goto :goto_1

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 128
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 130
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 132
    goto :goto_1

    .line 135
    :cond_7
    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 138
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 140
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 142
    goto :goto_1

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 146
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 148
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 150
    goto :goto_1

    .line 153
    :cond_9
    if-eqz v0, :cond_a

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 156
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 158
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 160
    goto :goto_1

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 164
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 166
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 168
    goto :goto_1

    .line 171
    :cond_b
    if-eqz v0, :cond_c

    .line 172
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 174
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 176
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 178
    goto :goto_1

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 182
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 184
    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    .line 189
    if-eqz v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 193
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 195
    move-result v0

    .line 198
    if-eqz v0, :cond_d

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 201
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 203
    move-result v0

    .line 206
    if-eqz v0, :cond_d

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    .line 214
    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 218
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 220
    move-result v0

    .line 223
    if-eqz v0, :cond_f

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 226
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 228
    move-result v0

    .line 231
    if-nez v0, :cond_e

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 234
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 236
    move-result v0

    .line 239
    if-eqz v0, :cond_f

    .line 240
    :cond_e
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    .line 247
    if-eqz v0, :cond_10

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 251
    check-cast v0, Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 255
    move-result v0

    .line 258
    if-le v0, v2, :cond_10

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 261
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    .line 263
    move-result v0

    .line 266
    if-eqz v0, :cond_10

    .line 267
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    .line 269
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_10
    return-void
    .line 274
.end method
