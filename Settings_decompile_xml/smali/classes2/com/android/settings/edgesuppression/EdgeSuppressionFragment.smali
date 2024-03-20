.class public Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EdgeSuppressionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CURRENT_SUPPORT_EDGE_MODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeModeSizePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

.field private final mLayListener:Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;

.field private mLaySensorState:I

.field private mLeftLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mLeftView:Landroid/view/View;

.field private mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRestrictedPreference:Landroidx/preference/Preference;

.field private mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

.field private mRestrictedType:Ljava/lang/String;

.field private mRestrictedValue:F

.field private mRightLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mRightView:Landroid/view/View;

.field private mSuppressionTipAreaView:Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

.field private mTipAreaWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEdgeSuppressionManager(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaySensorState(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLaySensorState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefCustomize(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuppressionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/SuppressionTipAreaView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mSuppressionTipAreaView:Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLaySensorState(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLaySensorState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSeekBarValue(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->getSeekBarValue(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetEdgeSuppression(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setEdgeSuppression(Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRestrictedViewWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setRestrictedViewWidth(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->updateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "wake_suppression"

    const-string v1, "custom_suppression"

    const-string v2, "default_suppression"

    const-string/jumbo v3, "strong_suppression"

    .line 29
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->CURRENT_SUPPORT_EDGE_MODE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLaySensorState:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    new-instance v0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;-><init>(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLayListener:Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;

    return-void
.end method

.method private changeRestrictedType()V
    .locals 3

    .line 168
    sget-object v0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->CURRENT_SUPPORT_EDGE_MODE_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default_suppression"

    .line 169
    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    const/4 v1, -0x2

    const-string v2, "edge_type"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private getSeekBarProgress()I
    .locals 3

    .line 378
    iget v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getAllowAdjustRange()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getSeekBarValue(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 372
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 373
    invoke-virtual {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getAllowAdjustRange()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private initFragment()V
    .locals 5

    .line 136
    sget v0, Lcom/android/settings/R$xml;->edge_settings_select_fragment:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "default_suppression"

    .line 139
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 141
    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget v1, Lcom/android/settings/R$string;->intelligence_suppression_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 143
    sget v1, Lcom/android/settings/R$string;->intelligence_suppression_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "strong_suppression"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 147
    iget-object v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "wake_suppression"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/RadioButtonPreference;

    .line 149
    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v4, "custom_suppression"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

    .line 151
    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v4, "restricted_info"

    .line 152
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/keys/RestrictedEdgeDescriptionPreference;

    .line 154
    iget-object v4, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 161
    iget-object v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 162
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initSeekBarFragment()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "edge_mode_adjust_level"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedPreference:Landroidx/preference/Preference;

    .line 179
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x3e8

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    new-instance v1, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;-><init>(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    new-instance v1, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$3;-><init>(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setStopTrackingTouchListener(Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;)V

    return-void
.end method

.method private initSuppressionTipAreaView()V
    .locals 6

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    new-instance v1, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    iget-object v4, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget v5, v4, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenWidth:I

    iget v4, v4, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenHeight:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mSuppressionTipAreaView:Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initTipView(Landroid/content/Context;I)V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 338
    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget v1, v1, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 339
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftView:Landroid/view/View;

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->restricted_tip_area_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 343
    iget-object p2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget p2, p2, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenHeight:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 344
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightView:Landroid/view/View;

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 349
    iget-object p2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object p2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetSensorState()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLaySensorState:I

    return-void
.end method

.method private setDefaultValue()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "default_suppression"

    .line 208
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 210
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 211
    iput-object v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 215
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "custom_suppression"

    .line 216
    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->getSeekBarProgress()I

    move-result v0

    .line 218
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEdgeSuppression(Lmiuix/preference/RadioButtonPreference;)V
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeModeSizePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_0

    move v2, v3

    .line 254
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v2, v6

    goto :goto_2

    :sswitch_0
    const-string v1, "custom_suppression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "wake_suppression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "strong_suppression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :sswitch_3
    const-string v1, "default_suppression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->getSeekBarValue(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    goto :goto_3

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 267
    invoke-virtual {v0, v3}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    goto :goto_3

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 263
    invoke-virtual {v0, v4}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    goto :goto_3

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 259
    invoke-virtual {v0, v5}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    .line 275
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_type"

    .line 277
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x2

    .line 275
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 279
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isReflectionFailed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 280
    iget p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_4

    .line 283
    :cond_6
    iget p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    .line 285
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "edge_size"

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1ca0abcb -> :sswitch_3
        0x3cb5238b -> :sswitch_2
        0x5d6e1318 -> :sswitch_1
        0x600bc165 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRestrictedViewWidth(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLeftLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRightLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSeekBarEnable()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPrefCustomize:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 365
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedSeekBar:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->getSeekBarProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private updateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 325
    iget v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenWidth:I

    iget p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenHeight:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->setTipWidth(III)V

    const/4 p0, 0x1

    .line 327
    invoke-virtual {p1, p0}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 92
    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->edge_mode_state_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 102
    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isReflectionFailed()Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "edge_size"

    const/4 v2, -0x2

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 105
    invoke-virtual {v3, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getOldConditionSize(I)F

    move-result v0

    .line 103
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 107
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    const/4 v1, 0x4

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 112
    invoke-virtual {v3, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 110
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "edge_type"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->changeRestrictedType()V

    .line 118
    iget p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    .line 119
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->initFragment()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->initSeekBarFragment()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setDefaultValue()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setSeekBarEnable()V

    .line 123
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->setScreenSize()V

    .line 125
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->initSuppressionTipAreaView()V

    goto :goto_1

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->initTipView(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getSizeOfInputMethod(FLjava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "vertical_edge_suppression_size"

    .line 226
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    iget-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getSizeOfInputMethod(FLjava/lang/String;)I

    move-result v1

    const-string v2, "horizontal_edge_suppression_size"

    .line 229
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->unRegisterLaySensor()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->resetSensorState()V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 291
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setEdgeSuppression(Lmiuix/preference/RadioButtonPreference;)V

    .line 292
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setSeekBarEnable()V

    .line 297
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->resetSensorState()V

    const-string p1, "default_suppression"

    .line 299
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->unRegisterLaySensor()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLayListener:Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->registerLaySensor(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)V

    .line 305
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedValue:F

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    .line 306
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 307
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mSuppressionTipAreaView:Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->updateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V

    goto :goto_1

    .line 309
    :cond_3
    iget p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setRestrictedViewWidth(I)V

    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->setScreenSize()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-virtual {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "default_suppression"

    .line 243
    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mRestrictedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mEdgeSuppressionManager:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mLayListener:Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->registerLaySensor(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mSuppressionTipAreaView:Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    invoke-direct {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->updateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V

    goto :goto_0

    .line 248
    :cond_1
    iget v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->mTipAreaWidth:I

    invoke-direct {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->setRestrictedViewWidth(I)V

    :goto_0
    return-void
.end method
