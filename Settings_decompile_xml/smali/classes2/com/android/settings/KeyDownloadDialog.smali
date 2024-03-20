.class public Lcom/android/settings/KeyDownloadDialog;
.super Ljava/lang/Object;
.source "KeyDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyDownloadDialog$IOnClickListener;
    }
.end annotation


# instance fields
.field private mConfirmString:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mListener:Lcom/android/settings/KeyDownloadDialog$IOnClickListener;

.field private mResourceName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/KeyDownloadDialog;)Lcom/android/settings/KeyDownloadDialog$IOnClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyDownloadDialog;->mListener:Lcom/android/settings/KeyDownloadDialog$IOnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/KeyDownloadDialog$IOnClickListener;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/KeyDownloadDialog;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/settings/KeyDownloadDialog;->mTitle:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/settings/KeyDownloadDialog;->mContent:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/android/settings/KeyDownloadDialog;->mResourceName:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/android/settings/KeyDownloadDialog;->mConfirmString:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/android/settings/KeyDownloadDialog;->mListener:Lcom/android/settings/KeyDownloadDialog$IOnClickListener;

    return-void
.end method

.method private showDialog(Landroid/view/View;)V
    .locals 2

    .line 66
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialog;->mTitle:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialog;->mConfirmString:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/KeyDownloadDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyDownloadDialog$4;-><init>(Lcom/android/settings/KeyDownloadDialog;)V

    .line 69
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "launch_noapp_dialog_cancel"

    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialog;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KeyDownloadDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyDownloadDialog$3;-><init>(Lcom/android/settings/KeyDownloadDialog;)V

    .line 75
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/KeyDownloadDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/KeyDownloadDialog$2;-><init>(Lcom/android/settings/KeyDownloadDialog;)V

    .line 82
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyDownloadDialog;->mDialogBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->knock_dialog_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget v1, Lcom/android/settings/R$id;->re_download:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "launch_noapp_dialog_install"

    .line 46
    iget-object v3, p0, Lcom/android/settings/KeyDownloadDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, p0, Lcom/android/settings/KeyDownloadDialog;->mResourceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v2, p0, Lcom/android/settings/KeyDownloadDialog;->mResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 52
    new-instance v2, Lcom/android/settings/KeyDownloadDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/KeyDownloadDialog$1;-><init>(Lcom/android/settings/KeyDownloadDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_0
    sget v1, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/KeyDownloadDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/android/settings/KeyDownloadDialog;->showDialog(Landroid/view/View;)V

    return-void
.end method
