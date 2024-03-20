.class Lcom/android/settings/accessibility/HapticSettingsFragment$6;
.super Landroid/view/View$AccessibilityDelegate;
.source "HapticSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/HapticSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$6;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$6;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->-$$Nest$fgetmChangePreferenceKey(Lcom/android/settings/accessibility/HapticSettingsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    .line 400
    iget-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$6;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    const-string p2, "accessibility_screen_reader_haptic"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 401
    invoke-virtual {p1}, Lcom/android/settings/widget/CustomCheckBoxPreference;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$6;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/HapticSettingsFragment;->-$$Nest$fputmChangePreferenceKey(Lcom/android/settings/accessibility/HapticSettingsFragment;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 408
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
