.class Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;
.super Lcom/android/settings/CheckedCallback;
.source "ToggleColorInversionPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    invoke-direct {p0}, Lcom/android/settings/CheckedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckResult(Z)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method
