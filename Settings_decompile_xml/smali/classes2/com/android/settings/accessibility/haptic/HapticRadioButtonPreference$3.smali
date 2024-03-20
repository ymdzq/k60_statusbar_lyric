.class Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;
.super Ljava/lang/Object;
.source "HapticRadioButtonPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 82
    check-cast p1, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    .line 83
    iget-object p2, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    .line 84
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    invoke-static {p2, v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isAccessibilityServiceOn(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->setPreferenceState(Z)V

    const/4 p0, 0x0

    return p0
.end method
