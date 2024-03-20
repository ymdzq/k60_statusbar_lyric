.class Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "HearingAccessibilitySettings.java"


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

    .line 118
    iput-object p1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "INTENT_ACTION_EXIT"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-static {p1}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->-$$Nest$fgetmEnvironmentSoundRecognition(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Lcom/android/settings/MiuiValuePreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-static {p1}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->-$$Nest$fgetmEnvironmentSoundRecognition(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Lcom/android/settings/MiuiValuePreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->access$000(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
