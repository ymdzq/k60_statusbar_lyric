.class Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$1;
.super Ljava/lang/Object;
.source "VoiceAccessRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$1;->this$0:Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$1;->this$0:Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->-$$Nest$mlaunchVoiceAccess(Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;)V

    return-void
.end method
