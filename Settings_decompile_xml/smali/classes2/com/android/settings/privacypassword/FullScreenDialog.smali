.class public Lcom/android/settings/privacypassword/FullScreenDialog;
.super Landroid/app/AlertDialog;
.source "FullScreenDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/FingerprintHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/android/settings/privacypassword/FullScreenDialog;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/settings/privacypassword/FullScreenDialog;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 47
    iget-object p0, p0, Lcom/android/settings/privacypassword/FullScreenDialog;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 35
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/android/settings/privacypassword/FullScreenDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->fod_dialog_window_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1302

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
