.class Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "GeneralAccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/GeneralAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateServicePreferences()V

    :cond_0
    return-void
.end method
