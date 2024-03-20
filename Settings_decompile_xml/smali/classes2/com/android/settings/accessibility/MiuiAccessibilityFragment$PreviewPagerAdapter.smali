.class Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;
.super Lcom/android/settingslib/androidx/FragmentPagerAdapter;
.source "MiuiAccessibilityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MiuiAccessibilityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    .line 68
    invoke-direct {p0, p2}, Lcom/android/settingslib/androidx/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 82
    invoke-static {}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->-$$Nest$sfgeta11ySettingsClass()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->-$$Nest$sfgeta11ySettingsClass()[Ljava/lang/Class;

    move-result-object v0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$PreviewPagerAdapter;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
