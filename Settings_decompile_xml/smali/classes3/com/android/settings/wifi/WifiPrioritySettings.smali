.class public Lcom/android/settings/wifi/WifiPrioritySettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiPrioritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 304
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    sget v0, Lcom/android/settings/R$layout;->preference_activity:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->preference_container:I

    new-instance v0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;-><init>()V

    .line 308
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
