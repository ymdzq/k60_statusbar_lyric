.class public Lcom/android/settings/applicationmode/ApplicationModeActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ApplicationModeActivity.java"


# instance fields
.field private transaction:Landroidx/fragment/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private commitTransaction()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applicationmode/ApplicationModeActivity;->transaction:Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x1020002    # @android:id/content

    .line 47
    invoke-direct {p0}, Lcom/android/settings/applicationmode/ApplicationModeActivity;->onCreateFragment()Lmiuix/appcompat/app/Fragment;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private onCreateFragment()Lmiuix/appcompat/app/Fragment;
    .locals 0

    .line 42
    new-instance p0, Lcom/android/settings/applicationmode/AppControlFragment;

    invoke-direct {p0}, Lcom/android/settings/applicationmode/AppControlFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    sget p1, Lcom/android/settings/R$string;->magic_window_name_pad:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 25
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applicationmode/ApplicationModeActivity;->commitTransaction()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 37
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/settings/applicationmode/ApplicationModeActivity;->transaction:Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
