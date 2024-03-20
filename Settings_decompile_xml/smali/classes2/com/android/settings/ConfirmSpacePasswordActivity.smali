.class public Lcom/android/settings/ConfirmSpacePasswordActivity;
.super Lcom/android/settings/ConfirmLockPassword$InternalActivity;
.source "ConfirmSpacePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmSpacePasswordActivity$ConfirmSpaceLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$smshowDialogByRemoveSpace(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/ConfirmSpacePasswordActivity;->showDialogByRemoveSpace(Lmiuix/appcompat/app/AppCompatActivity;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$InternalActivity;-><init>()V

    return-void
.end method

.method public static getExtraFragmentName()Ljava/lang/String;
    .locals 1

    .line 48
    const-class v0, Lcom/android/settings/ConfirmSpacePasswordActivity$ConfirmSpaceLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initActionBar(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .locals 4

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/ConfirmSpacePasswordActivity;->isAllowDeleteSpace(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget v2, Lcom/android/settings/R$drawable;->miuix_action_icon_delete_light:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    new-instance v2, Lcom/android/settings/ConfirmSpacePasswordActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ConfirmSpacePasswordActivity$1;-><init>(Lmiuix/appcompat/app/AppCompatActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x10

    .line 80
    invoke-virtual {v0, p0, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 81
    new-instance p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const p1, 0x800015

    invoke-direct {p0, v3, v3, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    .line 85
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static isAllowDeleteSpace(Landroid/content/Context;I)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airspace_policy_allow_delete_space"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method private static showDialogByRemoveSpace(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .locals 3

    .line 90
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->work_space_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->work_space_delete_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->new_password_to_new_fingerprint_dialog_negative_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->work_space_delete_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ConfirmSpacePasswordActivity$2;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/ConfirmSpacePasswordActivity$2;-><init>(ILmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 31
    const-class p0, Lcom/android/settings/ConfirmSpacePasswordActivity$ConfirmSpaceLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 37
    const-class p0, Lcom/android/settings/ConfirmSpacePasswordActivity$ConfirmSpaceLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/BaseConfirmLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/android/settings/ConfirmSpacePasswordActivity;->mContext:Landroid/content/Context;

    return-void
.end method
