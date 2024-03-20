.class public Lcom/android/settings/inputmethod/CustomInputMethodPreference;
.super Lcom/android/settingslib/inputmethod/InputMethodPreference;
.source "CustomInputMethodPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisabledByAdmin:Z

.field private mEnableTextState:Z

.field private final mHasPriorityInSorting:Z

.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

.field private final mUserId:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$62L8N-fjqas-b_MZRC1K9Lek8Ek(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showDirectBootWarnDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BqGKTE8lGYOkYADlTncB5sm-FxQ(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showSecurityWarnDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZhU7-3IhHfu3zUF5TWGWXDQyj0(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showDirectBootWarnDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Upk8qAKuVj_Fd5gJhEvI6LC_duQ(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showDirectBootWarnDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nKd9Fq4f32Xgwkg1MG-YgQBKfyo(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showSecurityWarnDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qpc-eBpdCcm53DCuL700Ug8IXEc(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->lambda$showSecurityWarnDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImi(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misTv(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->isTv()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCheckedInternal(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDirectBootWarnDialog(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->showDirectBootWarnDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSecurityWarnDialog(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->showSecurityWarnDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V
    .locals 2

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 61
    iput-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mEnableTextState:Z

    .line 82
    sget v1, Lcom/android/settings/R$xml;->input_method_item_preference_layout:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 84
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 85
    iput-object p2, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 86
    iput-boolean p3, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mIsAllowedByOrganization:Z

    .line 87
    iput-object p4, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 95
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-ne p5, p3, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 101
    iput p5, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mUserId:I

    .line 102
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mHasPriorityInSorting:Z

    return-void
.end method

.method private isImeEnabler()Z
    .locals 0

    .line 349
    invoke-virtual {p0}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTv()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 283
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDirectBootWarnDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 296
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 298
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 333
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$5(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 278
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {p1, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 293
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 294
    sget v2, Lcom/android/settings/R$string;->miui_input_method_attention:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 295
    sget v2, Lcom/android/settings/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 296
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 297
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 299
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 304
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight_Danger:I

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    .line 314
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 317
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/R$string;->ime_security_warning_title_global:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/settings/R$string;->risk_tip:I

    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 318
    iget-object v2, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 319
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 318
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 322
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/android/settings/R$string;->ime_security_warning_global:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/settings/R$string;->ime_security_warning:I

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 323
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 327
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 338
    new-instance v0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 343
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public CTSVerify()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkPreferenceViews()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setDisabledThisByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    goto :goto_0

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v0, :cond_1

    .line 381
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 382
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mUserId:I

    .line 381
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->setDisabledThisByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public jumpToInputMethodSettings(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 3

    .line 248
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 254
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v1

    .line 257
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 261
    :try_start_0
    iget v1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 264
    :catch_0
    sget p1, Lcom/android/settings/R$string;->failed_to_open_app_settings_toast:I

    iget-object v1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 264
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 268
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 272
    :goto_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 122
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->checkPreferenceViews()V

    .line 124
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->head:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->end:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->enable_mode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x1020016    # @android:id/title

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x1020010    # @android:id/summary

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x1020006    # @android:id/icon

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 132
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mEnableTextState:Z

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_3

    .line 142
    iget-object v5, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 143
    invoke-static {v3, v5, v7}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_2

    const-string v5, ""

    .line 146
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x8

    .line 147
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 155
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mUserId:I

    .line 152
    invoke-static {v3, v4, v5, v7}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 157
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 161
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v5}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v4

    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v4, v2, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->enabled:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->button_text_enable_normal_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->input_method_manage_text_enable_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->not_enabled:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->button_text_not_enable_normal_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->input_method_manage_text_un_enable_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_0
    if-eqz v0, :cond_b

    .line 174
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    sget v4, Lcom/android/settings/R$drawable;->preference_system_app_new_head_bg_rtl:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 177
    :cond_7
    sget v4, Lcom/android/settings/R$drawable;->preference_system_app_new_head_bg:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    :goto_1
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v5}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 180
    new-instance p1, Lcom/android/settings/inputmethod/CustomInputMethodPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "device_provisioned"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    move p1, v6

    goto :goto_2

    :cond_8
    move p1, v3

    .line 187
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p1, :cond_9

    goto :goto_3

    .line 190
    :cond_9
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 188
    :cond_a
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    .line 195
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 196
    sget p1, Lcom/android/settings/R$drawable;->preference_system_app_new_end_bg_rtl:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 198
    :cond_c
    sget p1, Lcom/android/settings/R$drawable;->preference_system_app_new_end_bg:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 203
    new-instance p1, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;

    invoke-direct {p1, p0, v2}, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setDisabledThisByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 354
    :goto_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 356
    iget-boolean p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDisabledByAdmin:Z

    if-eq p1, v2, :cond_1

    .line 357
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mDisabledByAdmin:Z

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public setEnableModeText(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->mEnableTextState:Z

    .line 389
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
