.class Lcom/android/settings/SettingsFragment$7;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment;->adapterAccessibility(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$7;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$7;->this$0:Lcom/android/settings/SettingsFragment;

    iget-boolean v1, v0, Lcom/android/settings/SettingsFragment;->isFirstEnter:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_2

    const/4 p1, 0x0

    .line 676
    iput-boolean p1, v0, Lcom/android/settings/SettingsFragment;->isFirstEnter:Z

    .line 677
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/app/AppCompatActivity;

    const/16 p2, 0x8

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 678
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$7;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 679
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 681
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/ActionBar;->getTitleView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 683
    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$7;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x1020016    # @android:id/title

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 689
    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return p3

    .line 694
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
