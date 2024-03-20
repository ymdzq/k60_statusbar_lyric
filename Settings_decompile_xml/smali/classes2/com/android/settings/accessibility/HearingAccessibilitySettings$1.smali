.class Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "HearingAccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/HearingAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->updateServicePreferences()V

    :cond_0
    return-void
.end method
