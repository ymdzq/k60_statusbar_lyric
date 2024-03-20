.class Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "MiuiConfirmCommonPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Landroid/content/Context;I)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    .line 485
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 496
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 490
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 491
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->secspace_fod_finger_bg_color:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
