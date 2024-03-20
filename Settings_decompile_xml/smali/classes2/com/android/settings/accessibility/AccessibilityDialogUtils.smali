.class public Lcom/android/settings/accessibility/AccessibilityDialogUtils;
.super Ljava/lang/Object;
.source "AccessibilityDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityDialogUtils$DialogType;,
        Lcom/android/settings/accessibility/AccessibilityDialogUtils$DialogEnums;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$X9ckJH4zJhbC2cbkh7p9U9dbooQ(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mdw6ycc2n20HKk3IjLeE_nE2T-E(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$getCustomizeAccessibilityButtonLink$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uorva4ndZLB1r1EveS1G6_x86sM(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$initAdvancedWidget$2(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 496
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 499
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p0, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 501
    invoke-virtual {p0, p5, p6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 503
    instance-of p1, p2, Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    instance-of p1, p2, Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    .line 504
    :cond_0
    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    :cond_1
    return-object p0
.end method

.method private static createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 187
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 189
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->save:I

    .line 190
    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 191
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 255
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 257
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 258
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 260
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 247
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 249
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 250
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 251
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 252
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 243
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 244
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 235
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 238
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public static createSingleChoiceListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 520
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000a    # @android:id/list

    .line 522
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 524
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 526
    new-instance v1, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 528
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 429
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 434
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 436
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

    .line 441
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 442
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 448
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 449
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 450
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 451
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 452
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static initAdvancedWidget(Landroid/view/View;)V
    .locals 2

    .line 366
    sget v0, Lcom/android/settings/R$id;->advanced_shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 367
    sget v1, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 368
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 339
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 340
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 342
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 344
    sget v1, Lcom/android/settings/R$drawable;->a11y_shortcut_type_hardware:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 349
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 350
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_triple_tap:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 352
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_triple_tap:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 356
    invoke-static {p0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 360
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 328
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 329
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 333
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 334
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 335
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    .line 332
    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 316
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 317
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    sget v1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 323
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 324
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    .line 322
    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 192
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$getCustomizeAccessibilityButtonLink$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 429
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;

    .line 430
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x751

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static synthetic lambda$initAdvancedWidget$2(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 369
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 370
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I
    .locals 1

    .line 416
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget p0, Lcom/android/settings/R$drawable;->a11y_shortcut_type_software_floating:I

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 420
    sget p0, Lcom/android/settings/R$drawable;->a11y_shortcut_type_software_gesture_talkback:I

    goto :goto_0

    .line 421
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->a11y_shortcut_type_software_gesture:I

    goto :goto_0

    .line 423
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->a11y_shortcut_type_software:I

    :goto_0
    return p0
.end method

.method private static retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3

    .line 396
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 397
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 399
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\n\n"

    if-eqz v1, :cond_2

    .line 400
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture_talkback:I

    goto :goto_0

    .line 402
    :cond_1
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture:I

    .line 403
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 404
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 405
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 407
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 408
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 409
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    return-object v0
.end method

.method private static retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 376
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 377
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private static retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 385
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software_by_gesture:I

    goto :goto_0

    .line 390
    :cond_1
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    .line 392
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static setScrollIndicators(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    .line 215
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method

.method private static setScrollIndicators(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    .line 203
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 204
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 271
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {p0, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithImageResource(Landroid/view/View;I)V

    return-void
.end method

.method private static setupShortcutWidgetWithImageResource(Landroid/view/View;I)V
    .locals 1

    .line 299
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 300
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 284
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 285
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 287
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 160
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 162
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Lmiuix/appcompat/app/AlertDialog;)V

    return-object p0
.end method

.method public static updateShortcutInDialog(Landroid/content/Context;Landroid/app/Dialog;)Z
    .locals 1

    .line 175
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 178
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
