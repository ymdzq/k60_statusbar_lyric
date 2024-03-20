.class Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$2;
.super Ljava/lang/Object;
.source "MiuiAccessibilitySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$2;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
