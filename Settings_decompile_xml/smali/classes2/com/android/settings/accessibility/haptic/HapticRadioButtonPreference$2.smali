.class Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$2;
.super Ljava/lang/Object;
.source "HapticRadioButtonPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    .line 72
    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$2;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$2;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->-$$Nest$mlaunchScreenReaderSettings(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V

    const/4 p0, 0x1

    return p0
.end method
