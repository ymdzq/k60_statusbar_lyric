.class public Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AccessibilityMagnificationShortcutTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity$DialogType;
    }
.end annotation


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mPackageName:Ljava/lang/CharSequence;

.field protected mPrefChecked:Z

.field protected mSavedCheckBoxValue:I

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mTripleTapTypeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public static synthetic $r8$lambda$CwveY63TxkPUXrKmbLc3nOh8dO4(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->lambda$getCustomizeAccessibilityButtonLink$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGQQ96BRZ-3y_TEAB_dBHV00DQ0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mPrefChecked:Z

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSavedCheckBoxValue:I

    return-void
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    const-string v0, "layout_inflater"

    .line 364
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 371
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification_pad:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 373
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 374
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 375
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 376
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initAdvancedWidget(Landroid/view/View;)V

    return-object p1

    .line 379
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 487
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 492
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 495
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_floating:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v1}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    .line 468
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 469
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 475
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 476
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 477
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 478
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 479
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static getUserShortcutTypeFromSettings(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    .line 173
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x2

    .line 176
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/4 v1, 0x4

    .line 179
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private static hasMagnificationValueInSettings(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_magnification_enabled"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 345
    :cond_1
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 353
    :cond_2
    sget-object p1, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 354
    :cond_3
    sget-object p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 355
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.server.accessibility.MagnificationController"

    .line 356
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method static hasMagnificationValuesInSettings(Landroid/content/Context;I)Z
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 192
    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x4

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 195
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private hasShortcutType(II)Z
    .locals 0

    .line 0
    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static initAdvancedWidget(Landroid/view/View;)V
    .locals 1

    .line 386
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 402
    :goto_0
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 403
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 405
    sget v2, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 409
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware_pad_vertical:I

    goto :goto_1

    .line 410
    :cond_1
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware_pad_horizontal:I

    .line 407
    :goto_1
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 418
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_triple_tap:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 420
    sget v2, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_triple_tap:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    .line 423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 424
    invoke-static {p0, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 427
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap_pad_vertical:I

    goto :goto_1

    .line 428
    :cond_1
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap_pad_horizontal:I

    .line 425
    :goto_1
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initShortcutPreference(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "shortcut_type"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSavedCheckBoxValue:I

    .line 206
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mPackageName:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 391
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 392
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 394
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 395
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 396
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->retrieveImageResId(Landroid/content/Context;)I

    move-result p0

    .line 395
    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initializeDialogCheckBox()V
    .locals 3

    .line 211
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 213
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 215
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 217
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 219
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->updateAlertDialogCheckState()V

    return-void
.end method

.method private isSplitModeEnabled()Z
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 116
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private static synthetic lambda$getCustomizeAccessibilityButtonLink$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 487
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;

    .line 488
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x751

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 255
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method static optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 263
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_1
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 266
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private static optInMagnificationValueToSettings(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_magnification_enabled"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 278
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 282
    :cond_1
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 290
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 301
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_1
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 304
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private static optOutMagnificationValueFromSettings(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_magnification_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 324
    :cond_1
    new-instance v1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 326
    sget-object v2, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 327
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 245
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 246
    iput v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSavedCheckBoxValue:I

    return v0
.end method

.method private static retrieveImageResId(Landroid/content/Context;)I
    .locals 0

    .line 462
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 463
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_floating_pad:I

    goto :goto_0

    .line 464
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_pad:I

    :goto_0
    return p0
.end method

.method private static retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 452
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 453
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n\n"

    .line 455
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 457
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private static retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 447
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    .line 448
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 255
    new-instance p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 434
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 438
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :goto_0
    sget p1, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 443
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateAlertDialogCheckState()V
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.server.accessibility.MagnificationController"

    .line 231
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 233
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mPrefChecked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 237
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasShortcutType(II)Z

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 239
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasShortcutType(II)Z

    move-result v2

    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    .line 241
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->hasShortcutType(II)Z

    move-result p0

    .line 240
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->isSplitModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 100
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mPackageName:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "pref_checked"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->mPrefChecked:Z

    move v1, v0

    .line 108
    :cond_1
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initShortcutPreference(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->initializeDialogCheckBox()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->getShortcutTypeCheckBoxValue()I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->saveNonEmptyUserShortcutType(I)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    not-int v0, v0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->updateShortcutPreferenceData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "shortcut_type"

    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityMagnificationShortcutTypeActivity;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_0
    return-void
.end method
