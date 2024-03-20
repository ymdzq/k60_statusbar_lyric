.class Lcom/android/settings/accessibility/InstalledAccessibilityService$1;
.super Ljava/lang/Object;
.source "InstalledAccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/InstalledAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/InstalledAccessibilityService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/InstalledAccessibilityService;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/InstalledAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/InstalledAccessibilityService;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/settings/accessibility/InstalledAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/InstalledAccessibilityService;

    invoke-static {p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService;->-$$Nest$mupdatePreferences(Lcom/android/settings/accessibility/InstalledAccessibilityService;)V

    :cond_0
    return-void
.end method
