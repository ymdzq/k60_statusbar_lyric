.class public Lcom/android/settings/notification/zen/ZenRuleNameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field protected static mPositiveClickListener:Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;


# direct methods
.method static bridge synthetic -$$Nest$mtrimmedText(Lcom/android/settings/notification/zen/ZenRuleNameDialog;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleNameDialog;->trimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getTitleResource(Landroid/net/Uri;Z)I
    .locals 1

    .line 115
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result p0

    .line 116
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p1

    .line 117
    sget v0, Lcom/android/settings/R$string;->zen_mode_rule_name:I

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    .line 120
    sget v0, Lcom/android/settings/R$string;->zen_mode_add_event_rule:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 122
    sget v0, Lcom/android/settings/R$string;->zen_mode_add_time_rule:I

    :cond_1
    :goto_0
    return v0
.end method

.method public static show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "zen_rule_name"

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_zen_condition_id"

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    sput-object p3, Lcom/android/settings/notification/zen/ZenRuleNameDialog;->mPositiveClickListener:Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;

    .line 63
    new-instance p1, Lcom/android/settings/notification/zen/ZenRuleNameDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/zen/ZenRuleNameDialog;-><init>()V

    .line 64
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "ZenRuleNameDialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private trimmedText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x4f5

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_zen_condition_id"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string/jumbo v1, "zen_rule_name"

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/settings/R$layout;->zen_rule_name:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 80
    sget v5, Lcom/android/settings/R$id;->zen_mode_rule_name:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 87
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 88
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0, v0, v3}, Lcom/android/settings/notification/zen/ZenRuleNameDialog;->getTitleResource(Landroid/net/Uri;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v3, :cond_2

    .line 91
    sget v1, Lcom/android/settings/R$string;->zen_mode_add:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/settings/R$string;->okay:I

    :goto_1
    new-instance v2, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;

    invoke-direct {v2, p0, v5, v3, p1}, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/zen/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    .line 106
    invoke-virtual {p0, p1, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
