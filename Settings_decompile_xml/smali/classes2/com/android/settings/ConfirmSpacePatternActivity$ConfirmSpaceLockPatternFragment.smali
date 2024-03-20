.class public Lcom/android/settings/ConfirmSpacePatternActivity$ConfirmSpaceLockPatternFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmSpacePatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmSpacePatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmSpaceLockPatternFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    iget p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-static {p2, p0}, Lcom/android/settings/ConfirmSpacePasswordActivity;->initActionBar(Lmiuix/appcompat/app/AppCompatActivity;I)V

    return-object p1
.end method
