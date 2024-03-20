.class Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$1;
.super Ljava/lang/Object;
.source "HapticRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 66
    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$1;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$1;->this$0:Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->-$$Nest$mlaunchScreenReaderSettings(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V

    return-void
.end method
