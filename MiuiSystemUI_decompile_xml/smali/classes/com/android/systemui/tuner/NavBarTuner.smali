.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ICONS:[[I


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mTunables:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const v0, 0x7f08113f    # @drawable/ic_qs_circle 'res/drawable/ic_qs_circle.xml'

    .line 2
    const v1, 0x7f130bde    # @string/tuner_circle 'Circle'

    .line 5
    filled-new-array {v0, v1}, [I

    .line 8
    move-result-object v2

    .line 11
    const v0, 0x7f080ede    # @drawable/ic_add 'res/drawable/ic_add.xml'

    .line 12
    const v1, 0x7f130bea    # @string/tuner_plus 'Plus'

    .line 15
    filled-new-array {v0, v1}, [I

    .line 18
    move-result-object v3

    .line 21
    const v0, 0x7f08118f    # @drawable/ic_remove 'res/drawable/ic_remove.xml'

    .line 22
    const v1, 0x7f130be7    # @string/tuner_minus 'Minus'

    .line 25
    filled-new-array {v0, v1}, [I

    .line 28
    move-result-object v4

    .line 31
    const v0, 0x7f081035    # @drawable/ic_left 'res/drawable/ic_left.xml'

    .line 32
    const v1, 0x7f130be3    # @string/tuner_left 'Left'

    .line 35
    filled-new-array {v0, v1}, [I

    .line 38
    move-result-object v5

    .line 41
    const v0, 0x7f081193    # @drawable/ic_right 'res/drawable/ic_right.xml'

    .line 42
    const v1, 0x7f130beb    # @string/tuner_right 'Right'

    .line 45
    filled-new-array {v0, v1}, [I

    .line 48
    move-result-object v6

    .line 51
    const v0, 0x7f081069    # @drawable/ic_menu 'res/drawable/ic_menu.xml'

    .line 52
    const v1, 0x7f130be6    # @string/tuner_menu 'Menu'

    .line 55
    filled-new-array {v0, v1}, [I

    .line 58
    move-result-object v7

    .line 61
    filled-new-array/range {v2 .. v7}, [[I

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 66
    return-void
    .line 68
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    .line 10
    return-void
    .line 12
.end method

.method public static setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 2
    const-string v0, "key"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p3, p3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 14
    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const/16 p2, 0x42

    .line 27
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, "("

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string p1, ":"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string p1, ")"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    :cond_0
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    .line 62
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 67
    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    .line 68
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
    .line 73
.end method


# virtual methods
.method public final bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v0, p3

    .line 3
    const-string/jumbo v1, "type_"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 12
    move-result-object v1

    .line 15
    move-object v7, v1

    .line 16
    check-cast v7, Landroidx/preference/ListPreference;

    .line 17
    const-string v1, "keycode_"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 25
    move-result-object v8

    .line 28
    const-string v1, "icon_"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 35
    move-result-object v0

    .line 38
    move-object v9, v0

    .line 39
    check-cast v9, Landroidx/preference/ListPreference;

    .line 40
    const/4 v0, 0x6

    .line 42
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 43
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    move-result-object v3

    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x41600000    # 14.0f

    .line 60
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 62
    move-result v3

    .line 65
    float-to-int v3, v3

    .line 66
    const/4 v5, 0x0

    .line 67
    move v10, v5

    .line 68
    :goto_0
    if-ge v10, v0, :cond_0

    .line 69
    new-instance v11, Landroid/text/SpannableStringBuilder;

    .line 71
    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v12

    .line 79
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    move-result-object v12

    .line 83
    sget-object v13, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 84
    aget-object v14, v13, v10

    .line 86
    aget v14, v14, v5

    .line 88
    invoke-static {v12, v14}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 90
    move-result-object v12

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v14

    .line 97
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object v12

    .line 101
    const/high16 v14, -0x1000000

    .line 102
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 104
    invoke-virtual {v12, v5, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    new-instance v14, Landroid/text/style/ImageSpan;

    .line 110
    invoke-direct {v14, v12, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    const-string v12, "  "

    .line 115
    invoke-virtual {v11, v12, v14, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 117
    const-string v12, " "

    .line 120
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    aget-object v12, v13, v10

    .line 125
    aget v12, v12, v4

    .line 127
    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v12

    .line 132
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    aput-object v11, v1, v10

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v12

    .line 146
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 147
    move-result-object v12

    .line 150
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v12, "/"

    .line 154
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    aget-object v12, v13, v10

    .line 159
    aget v12, v12, v5

    .line 161
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v11

    .line 169
    aput-object v11, v2, v10

    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 172
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v9, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 175
    iput-object v2, v9, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 178
    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;

    .line 180
    move-object v0, v10

    .line 182
    move-object v1, p0

    .line 183
    move-object v2, v8

    .line 184
    move-object/from16 v3, p2

    .line 185
    move-object v4, v7

    .line 187
    move-object v5, v9

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    .line 189
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 195
    iget-object v1, v6, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    .line 201
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    move-result-object v1

    .line 206
    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    .line 207
    invoke-virtual {v1, v10, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 209
    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;

    .line 212
    move-object v0, v10

    .line 214
    move-object v1, p0

    .line 215
    move-object/from16 v2, p1

    .line 216
    move-object v3, v7

    .line 218
    move-object v4, v8

    .line 219
    move-object v5, v9

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    .line 221
    iput-object v10, v7, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 224
    iput-object v10, v9, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 226
    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;

    .line 228
    move-object v0, v10

    .line 230
    move-object v2, v8

    .line 231
    move-object/from16 v3, p1

    .line 232
    move-object v4, v7

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    .line 235
    iput-object v10, v8, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 238
    return-void
    .line 240
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 9
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 3

    .line 1
    const p1, 0x7f17000a    # @xml/nav_bar_tuner 'res/xml/nav_bar_tuner.xml'

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 5
    const-string p1, "layout"

    .line 8
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/preference/ListPreference;

    .line 14
    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/ListPreference;)V

    .line 18
    const-string/jumbo v1, "sysui_nav_bar"

    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    .line 33
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    .line 39
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda1;

    .line 44
    invoke-direct {v0}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda1;-><init>()V

    .line 46
    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 49
    const-string p1, "left"

    .line 51
    const-string/jumbo v0, "sysui_nav_bar_left"

    .line 53
    const-string/jumbo v1, "space"

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo p1, "right"

    .line 62
    const-string/jumbo v0, "sysui_nav_bar_right"

    .line 65
    const-string v1, "menu_ime"

    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
    .line 73
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;

    .line 7
    invoke-direct {v0}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    return-void
    .line 15
.end method

.method public final updateSummary(Landroidx/preference/ListPreference;)V
    .locals 7

    .line 1
    const-string v0, "/"

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/high16 v3, 0x41600000    # 14.0f

    .line 17
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 19
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    iget-object v3, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    aget-object v3, v3, v4

    .line 31
    iget-object v5, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    aget-object v0, v0, v2

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 44
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 45
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 47
    invoke-static {v3, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 50
    move-result-object v3

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v6

    .line 57
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v3

    .line 61
    const/high16 v6, -0x1000000

    .line 62
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 64
    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 70
    invoke-direct {v1, v3, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 72
    const-string v3, "  "

    .line 75
    invoke-virtual {v5, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 77
    const-string v1, " "

    .line 80
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    move v1, v4

    .line 85
    :goto_0
    sget-object v3, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 86
    const/4 v6, 0x6

    .line 88
    if-ge v1, v6, :cond_1

    .line 89
    aget-object v3, v3, v1

    .line 91
    aget v6, v3, v4

    .line 93
    if-ne v6, v0, :cond_0

    .line 95
    aget v3, v3, v2

    .line 97
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 102
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    const-string v0, "NavButton"

    .line 114
    const-string v1, "Problem with summary"

    .line 116
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 p0, 0x0

    .line 121
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :goto_1
    return-void
    .line 125
.end method
