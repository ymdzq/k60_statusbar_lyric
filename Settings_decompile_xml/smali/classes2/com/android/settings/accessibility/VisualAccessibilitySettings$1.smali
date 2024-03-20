.class Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "VisualAccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VisualAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateServicePreferences()V

    :cond_0
    return-void
.end method
