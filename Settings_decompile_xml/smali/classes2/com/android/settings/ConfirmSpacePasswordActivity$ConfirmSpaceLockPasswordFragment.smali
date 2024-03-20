.class public Lcom/android/settings/ConfirmSpacePasswordActivity$ConfirmSpaceLockPasswordFragment;
.super Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.source "ConfirmSpacePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmSpacePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmSpaceLockPasswordFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    iget p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-static {p2, p0}, Lcom/android/settings/ConfirmSpacePasswordActivity;->initActionBar(Lmiuix/appcompat/app/AppCompatActivity;I)V

    return-object p1
.end method
