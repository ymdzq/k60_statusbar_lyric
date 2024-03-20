.class public Lcom/android/settings/dndmode/AutoTimeSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AutoTimeSettings.java"


# instance fields
.field private mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->startQuietWristband(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/android/settings/R$layout;->dndm_activity_with_fragment:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-direct {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->fragment_container:I

    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    iget-object v2, p0, Lcom/android/settings/dndmode/AutoTimeSettings;->mFragment:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 22
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
