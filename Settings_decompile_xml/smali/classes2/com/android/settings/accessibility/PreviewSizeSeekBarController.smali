.class abstract Lcom/android/settings/accessibility/PreviewSizeSeekBarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreviewSizeSeekBarController.java"

# interfaces
.implements Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;
    }
.end annotation


# static fields
.field private static final KEY_SAVED_QS_TOOLTIP_RESHOW:Ljava/lang/String; = "qs_tooltip_reshow"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInteractionListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastProgress:I

.field private mNeedsQSTooltipReshow:Z

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

.field private mSeekByTouch:Z

.field private final mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/accessibility/PreviewSizeData<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private mStateLabels:[Ljava/lang/String;

.field private mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

.field private resetStateOnDisplayPreference:Z


# direct methods
.method public static synthetic $r8$lambda$_ZU9DJzWEw7p2JC8q8j_Iqr2ucs(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekByTouch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekByTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monProgressFinalized(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->onProgressFinalized()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSeekbarStateDescription(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setSeekbarStateDescription(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/PreviewSizeData<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->resetStateOnDisplayPreference:Z

    .line 63
    new-instance p2, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;-><init>(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 102
    iput-object p3, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    .line 103
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private onProgressFinalized()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    .line 215
    iget v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    if-eq v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->showQuickSettingsTooltipIfNeeded()V

    .line 217
    iput v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    :cond_0
    return-void
.end method

.method private setSeekbarStateDescription(I)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    .line 206
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 207
    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 205
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showQuickSettingsTooltipIfNeeded()V
    .locals 4

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getTileComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->hasValueInSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 234
    :cond_1
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getTileTooltipContent()Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->accessibility_auto_added_qs_tooltip_illustration:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->setup(Ljava/lang/CharSequence;I)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    iget-object v2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBarPreference;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->showAtTopCenter(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->optInValueToSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/PreviewSizeData;->getInitialIndex()I

    move-result v1

    .line 144
    iput v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    iget-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p1}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setSeekbarStateDescription(I)V

    .line 155
    iget-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->resetStateOnDisplayPreference:Z

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->resetState()V

    const-string p1, "PreviewSizeSeekBarController"

    const-string/jumbo v0, "resetState on displayPreference!"

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->resetStateOnDisplayPreference:Z

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method abstract getTileComponentName()Landroid/content/ComponentName;
.end method

.method abstract getTileTooltipContent()Ljava/lang/CharSequence;
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "qs_tooltip_reshow"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo p0, "qs_tooltip_reshow"

    .line 125
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/PreviewSizeData;->getDefaultValue()Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    :cond_0
    const-string v0, "PreviewSizeSeekBarController"

    const-string/jumbo v1, "mSeekBarPreference is null!"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->resetStateOnDisplayPreference:Z

    .line 179
    :goto_0
    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    new-instance v0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V
    .locals 0

    .line 130
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    return-void
.end method

.method public setProgressStateLabels([Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
