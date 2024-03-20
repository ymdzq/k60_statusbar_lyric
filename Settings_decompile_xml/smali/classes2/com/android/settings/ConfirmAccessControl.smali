.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

.field private mNoBack:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmNoBack(Lcom/android/settings/ConfirmAccessControl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 66
    const-class p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->parseIntent(Landroid/content/Intent;)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    sget-object p1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
