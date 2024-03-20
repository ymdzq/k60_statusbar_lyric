.class public Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AccessibilityShortcutTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity$DialogType;
    }
.end annotation


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field protected mComponentName:Landroid/content/ComponentName;

.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mPackageName:Ljava/lang/CharSequence;

.field protected mPrefChecked:Z

.field protected mSavedCheckBoxValue:I

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public static synthetic $r8$lambda$GsqHcWxiplPzJGW097K5YLNDuVY(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StbZGXV8nLrnP4C55N3DZiv1z9A(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->lambda$getCustomizeAccessibilityButtonLink$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mPrefChecked:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSavedCheckBoxValue:I

    return-void
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    const-string v0, "layout_inflater"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 229
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_pad:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 231
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 232
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    return-object p1

    .line 235
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 320
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 328
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

    .line 301
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 302
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 308
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 309
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 310
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 311
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 312
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
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

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 251
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

    .line 253
    :goto_0
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 254
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    sget v2, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 260
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware_pad_vertical:I

    goto :goto_1

    .line 261
    :cond_1
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware_pad_horizontal:I

    .line 258
    :goto_1
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initShortcutPreference(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "shortcut_type"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSavedCheckBoxValue:I

    .line 159
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mPackageName:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 242
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 243
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 245
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 246
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->retrieveImageResId(Landroid/content/Context;)I

    move-result p0

    .line 246
    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initializeDialogCheckBox()V
    .locals 3

    .line 164
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 166
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 168
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->updateAlertDialogCheckState()V

    return-void
.end method

.method private isSplitModeEnabled()Z
    .locals 3

    .line 109
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

    .line 111
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

    .line 320
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;

    .line 321
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x751

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 194
    iput v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSavedCheckBoxValue:I

    return v0
.end method

.method private static retrieveImageResId(Landroid/content/Context;)I
    .locals 0

    .line 295
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 296
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_floating_pad:I

    goto :goto_0

    .line 297
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_pad:I

    :goto_0
    return p0
.end method

.method private static retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 285
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 286
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n\n"

    .line 288
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private static retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 280
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 218
    new-instance p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 267
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 271
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_0
    sget p1, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateAlertDialogCheckState()V
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 182
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mPrefChecked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 187
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->hasShortcutType(II)Z

    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 189
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->hasShortcutType(II)Z

    move-result p0

    .line 188
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 211
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->isSplitModeEnabled()Z

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

    .line 91
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 93
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mPackageName:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "pref_checked"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mPrefChecked:Z

    const-string v1, "component_name"

    .line 101
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    move v1, v0

    .line 103
    :cond_1
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->initShortcutPreference(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->initializeDialogCheckBox()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->getShortcutTypeCheckBoxValue()I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->saveNonEmptyUserShortcutType(I)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v0, v2}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    not-int v0, v0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->updateShortcutPreferenceData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "shortcut_type"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    .line 144
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutTypeActivity;->mComponentName:Landroid/content/ComponentName;

    .line 148
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_1
    return-void
.end method
