.class public Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;
.super Ljava/lang/Object;
.source "ShoulderKeyShortcutUtils.java"


# static fields
.field private static mShoulderKeyShortcutUtils:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogAlreadyShown:Z

.field private mDoNotShowDialogAgain:Z

.field private mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialogAlreadyShown(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDialogAlreadyShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDoNotShowDialogAgain(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDoNotShowDialogAgain:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;-><init>(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)V

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mOnPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;

    invoke-direct {v0, p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;-><init>(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)V

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "do_not_show_shoulder_key_shortcut_prompt"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v2, v0

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDoNotShowDialogAgain:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mShoulderKeyShortcutUtils:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mShoulderKeyShortcutUtils:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    .line 51
    :cond_0
    sget-object p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mShoulderKeyShortcutUtils:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    return-object p0
.end method

.method private showAlertDialog()V
    .locals 3

    .line 62
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/android/settings/R$string;->set_shoulder_key_shortcut_title:I

    .line 63
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->set_shoulder_key_shortcut_message:I

    .line 64
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->set_shoulder_key_shortcut_checkbox_message:I

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->set_shoulder_key_shortcut_positive_button:I

    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mOnPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->set_shoulder_key_shortcut_negative_button:I

    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public showPrompt()V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDoNotShowDialogAgain:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDialogAlreadyShown:Z

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->showAlertDialog()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->mDialogAlreadyShown:Z

    :cond_0
    return-void
.end method
