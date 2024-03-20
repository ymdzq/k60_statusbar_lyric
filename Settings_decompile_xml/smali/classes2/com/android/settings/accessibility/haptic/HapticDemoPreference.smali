.class public Lcom/android/settings/accessibility/haptic/HapticDemoPreference;
.super Landroidx/preference/Preference;
.source "HapticDemoPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCheckBox:Landroid/view/View;

.field public mClock:Landroid/view/View;

.field public mHighLightButton:Landroid/view/View;

.field public mHighLightList:Landroid/view/View;

.field public mInput:Landroid/view/View;

.field public mNoAction:Landroid/view/View;

.field public mNormalButton:Landroid/view/View;

.field public mNormalList:Landroid/view/View;

.field public mPicker:Landroid/view/View;

.field public mRootView:Landroid/view/View;

.field public mSeekBar:Landroid/view/View;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field public mTab:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "ACCESSIBILITY_SCREEN_READER_SP"

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 41
    sget p1, Lcom/android/settings/R$layout;->haptic_demo_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isScreenReaderCheckboxOpen()Z
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "is_accessibility_screen_reader_open"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->isScreenReaderCheckboxOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->time_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mClock:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->general_time:I

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mClock:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->input_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mInput:Landroid/view/View;

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mTab:Landroid/view/View;

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->picker_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mPicker:Landroid/view/View;

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->seekbar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mSeekBar:Landroid/view/View;

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->normal_list_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mNormalList:Landroid/view/View;

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->checkbox_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mCheckBox:Landroid/view/View;

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->highlight_list_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mHighLightList:Landroid/view/View;

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->no_action_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mNoAction:Landroid/view/View;

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->button_normal_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mNormalButton:Landroid/view/View;

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->button_highlight_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticDemoPreference;->mHighLightButton:Landroid/view/View;

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method
