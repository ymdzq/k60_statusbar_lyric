.class public Lcom/android/settings/AgpsSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AgpsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;
    }
.end annotation


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFragment:Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsNotSet()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/AgpsSettings;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static isAgpsEnabled()Z
    .locals 2

    const-string/jumbo v0, "support_agps"

    const/4 v1, 0x0

    .line 533
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 485
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 487
    sget v0, Lcom/android/settings/R$layout;->preference_activity:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 488
    new-instance v0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->mFragment:Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;

    if-nez p1, :cond_0

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->preference_container:I

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->mFragment:Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;

    .line 491
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 496
    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 500
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->supl_not_set:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/AgpsSettings;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 508
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->menu_save:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 509
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108004e    # @android:drawable/ic_menu_save

    .line 511
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->menu_restore:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 512
    invoke-interface {p1, v1, v0, v1, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080055    # @android:drawable/ic_menu_upload

    .line 514
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 520
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 529
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 526
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AgpsSettings;->mFragment:Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->-$$Nest$mrestoreAgpsParam(Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;)V

    return v1

    .line 522
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AgpsSettings;->mFragment:Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->-$$Nest$msaveAgpsParams(Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;)V

    return v1
.end method
