.class public Lcom/android/settings/haptic/HapticInterestingActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "HapticInterestingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/haptic/HapticInterestingActivity$HapticInterestingFragment;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1iauaJ003Vgwe-09cuvmoRGS54Y(Lcom/android/settings/haptic/HapticInterestingActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticInterestingActivity;->lambda$onResume$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private addFragment()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lcom/android/settings/haptic/HapticInterestingActivity$HapticInterestingFragment;

    invoke-direct {v0}, Lcom/android/settings/haptic/HapticInterestingActivity$HapticInterestingFragment;-><init>()V

    const v1, 0x1020002    # @android:id/content

    .line 41
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d    # @android:color/transparent

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v1, Lcom/android/settings/R$color;->haptic_interesting:I

    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    sget v2, Lcom/android/settings/R$color;->haptic_interesting_bottom:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticInterestingActivity;->addFragment()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 47
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/haptic/HapticInterestingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticInterestingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/haptic/HapticInterestingActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 26
    sget p1, Lcom/android/settings/R$style;->InterestingTheme:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
