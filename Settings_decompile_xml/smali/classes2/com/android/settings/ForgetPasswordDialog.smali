.class public Lcom/android/settings/ForgetPasswordDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ForgetPasswordDialog.java"


# instance fields
.field private mContentOne:Landroid/widget/TextView;

.field private mContentThree:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mOkBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/android/settings/ForgetPasswordDialog;->initCustomTitle()V

    return-void
.end method

.method private initCustomTitle()V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->forget_password_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/android/settings/R$id;->forget_password_dialog_content_one:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ForgetPasswordDialog;->mContentOne:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->forget_password_dialog_content_one:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget v1, Lcom/android/settings/R$id;->forget_password_dialog_content_three:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ForgetPasswordDialog;->mContentThree:Landroid/widget/TextView;

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->forget_password_dialog_content_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "POCO"

    .line 42
    sget-object v5, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->miui_keyguard_forget_password_poco:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 45
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ForgetPasswordDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->miui_keyguard_forget_password_mi:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 47
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x2a

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x12

    .line 50
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 51
    iget-object v1, p0, Lcom/android/settings/ForgetPasswordDialog;->mContentThree:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    sget v1, Lcom/android/settings/R$id;->ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ForgetPasswordDialog;->mOkBtn:Landroid/widget/Button;

    .line 55
    new-instance v2, Lcom/android/settings/ForgetPasswordDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ForgetPasswordDialog$1;-><init>(Lcom/android/settings/ForgetPasswordDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method
