.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TextReadingPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/TextReadingPreferenceFragment$EntryPoint;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mEntryPoint:I

.field private mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

.field mNeedResetSettings:Z

.field private mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

.field mResetStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0SAxCXmhlnO76tx43NPxx9aCW3w(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$createPreferenceControllers$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BWNyO-trFjos_If7kbKjcC3-u6A(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->onPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPNiFc-hDZDI9NQg47u2nVZlrf8(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$getResetStateListeners$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z261bgvFjrmY2zHmZLzeLeYfoEc(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$getResetStateListeners$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 329
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_text_reading_options:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void
.end method

.method private getResetStateListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 325
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 326
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$createPreferenceControllers$0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x3f1

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private static synthetic lambda$getResetStateListeners$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 325
    instance-of p0, p0, Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    return p0
.end method

.method private static synthetic lambda$getResetStateListeners$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
    .locals 0

    .line 326
    check-cast p0, Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    return-object p0
.end method

.method private onPositiveButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p1, 0x3f1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 305
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    .line 313
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->resetState()V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance p2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_text_reading_reset_message:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateEntryPoint()V
    .locals 4

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "launched_from"

    .line 291
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->isCallingFromAnythingElseEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 297
    :cond_1
    iput v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void
.end method


# virtual methods
.method createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;
    .locals 0

    .line 286
    new-instance p0, Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/DisplaySizeData;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->updateEntryPoint()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v7, Lcom/android/settings/accessibility/FontSizeData;

    invoke-direct {v7, p1}, Lcom/android/settings/accessibility/FontSizeData;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;

    move-result-object v8

    .line 170
    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreviewController;

    const-string/jumbo v2, "preview"

    invoke-direct {v1, p1, v2, v7, v8}, Lcom/android/settings/accessibility/TextReadingPreviewController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/FontSizeData;Lcom/android/settings/accessibility/DisplaySizeData;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    .line 172
    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/TextReadingPreviewController;->setEntryPoint(I)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v9, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;

    const-string v4, "font_size"

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;Landroid/content/Context;)V

    .line 188
    invoke-virtual {v7}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->font_scale_percentage:I

    .line 193
    invoke-virtual {v7}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 191
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setProgressStateLabels([Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {v9, v1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 199
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$2;

    const-string v2, "display_size"

    invoke-direct {v1, p0, p1, v2, v8}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    const-string/jumbo v2, "toggle_force_bold_text"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    .line 218
    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->setEntryPoint(I)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;

    const-string/jumbo v2, "toggle_high_text_contrast_preference"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;->setEntryPoint(I)V

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcom/android/settings/accessibility/TextReadingResetController;

    new-instance v2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    const-string/jumbo v3, "reset"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/accessibility/TextReadingResetController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 229
    iget p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, p1}, Lcom/android/settings/accessibility/TextReadingResetController;->setEntryPoint(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/TextReadingResetController;->setVisible(Z)V

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x784

    return p0

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogMetricsCategory(I)I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "TextReadingPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x778

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 149
    sget p0, Lcom/android/settings/R$xml;->accessibility_text_reading_options:I

    return p0
.end method

.method protected isCallingFromAnythingElseEntryPoint()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "setupwizard"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    sget v0, Lcom/android/settings/R$string;->accessibility_text_reading_options_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    .line 108
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->getResetStateListeners()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "need_reset_settings"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    .line 239
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->accessibility_text_reading_confirm_dialog_title:I

    .line 240
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accessibility_text_reading_confirm_dialog_message:I

    .line 241
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accessibility_text_reading_confirm_dialog_reset_button:I

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    .line 242
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "need_reset_settings"

    const/4 v1, 0x1

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->getCurrentItem()I

    move-result p0

    const-string v0, "last_preview_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 274
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "last_preview_index"

    .line 128
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
