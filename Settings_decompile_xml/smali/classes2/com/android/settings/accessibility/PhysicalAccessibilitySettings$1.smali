.class Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "PhysicalAccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;->updateServicePreferences()V

    :cond_0
    return-void
.end method
