.class public Lcom/android/settings/localepicker/LocaleDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "LocaleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mShouldKeepDialog:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmShouldKeepDialog(Lcom/android/settings/localepicker/LocaleDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mShouldKeepDialog:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/android/settings/localepicker/LocaleDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/LocaleDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/localepicker/LocaleDialogFragment;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/settings/localepicker/LocaleDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleDialogFragment;-><init>()V

    return-object v0
.end method

.method private static setDialogMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 125
    sget v0, Lcom/android/settings/R$id;->dialog_msg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setDialogTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 117
    sget v0, Lcom/android/settings/R$id;->dialog_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getLocaleDialogController(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDialogFragment;Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;
    .locals 1

    .line 135
    new-instance v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;-><init>(Lcom/android/settings/localepicker/LocaleDialogFragment;Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDialogFragment;Lcom/android/settings/localepicker/LocaleListEditor;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "arg_dialog_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x7e6

    return p0

    :cond_0
    const/16 p0, 0x7e7

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "arg_dialog_type"

    .line 84
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "arg_show_dialog"

    .line 85
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mShouldKeepDialog:Z

    if-ne v2, v1, :cond_0

    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mShouldKeepDialog:Z

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleListEditor;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p0, p1}, Lcom/android/settings/localepicker/LocaleDialogFragment;->getLocaleDialogController(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDialogFragment;Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->getDialogContent()Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->locale_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 100
    iget-object v3, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/localepicker/LocaleDialogFragment;->setDialogTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    iget-object v3, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/localepicker/LocaleDialogFragment;->setDialogMessage(Landroid/view/View;Ljava/lang/String;)V

    .line 103
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 105
    iget-object v2, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    :cond_1
    iget-object v2, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v1, v1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "arg_show_dialog"

    .line 77
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mShouldKeepDialog:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
