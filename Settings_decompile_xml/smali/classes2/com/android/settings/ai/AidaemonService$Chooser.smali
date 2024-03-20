.class Lcom/android/settings/ai/AidaemonService$Chooser;
.super Ljava/lang/Object;
.source "AidaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Chooser"
.end annotation


# instance fields
.field private final PRESS_TYPE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/ai/AidaemonService;


# direct methods
.method public constructor <init>(Lcom/android/settings/ai/AidaemonService;Landroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->this$0:Lcom/android/settings/ai/AidaemonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "key_ai_button_settings"

    .line 58
    iput-object p1, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->PRESS_TYPE:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->mContext:Landroid/content/Context;

    return-void
.end method

.method private chooseInner(Lcom/android/settings/ai/AiSettingsItem;)Lcom/android/settings/ai/AidaemonService$IntentAction;
    .locals 1

    .line 88
    iget p0, p1, Lcom/android/settings/ai/AiSettingsItem;->type:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 90
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;

    iget p1, p1, Lcom/android/settings/ai/AiSettingsItem;->voiceAssistantMode:I

    invoke-direct {p0, p1}, Lcom/android/settings/ai/AidaemonService$OpenVoiceAssistantIntentAction;-><init>(I)V

    return-object p0

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    .line 92
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$OpenGoogleSearchIntentAction-IA;)V

    return-object p0

    :cond_1
    const/4 p1, 0x3

    if-ne p1, p0, :cond_2

    .line 94
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraBackIntentAction;

    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraBackIntentAction;-><init>()V

    return-object p0

    :cond_2
    const/4 p1, 0x4

    if-ne p1, p0, :cond_3

    .line 96
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraFrontIntentAction;

    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenCameraIntentAction$OpenCameraFrontIntentAction;-><init>()V

    return-object p0

    :cond_3
    const/4 p1, 0x5

    if-ne p1, p0, :cond_4

    .line 98
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction-IA;)V

    return-object p0

    :cond_4
    const/4 p1, 0x6

    if-ne p1, p0, :cond_5

    .line 100
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$OpenFlashLightIntentAction-IA;)V

    return-object p0

    :cond_5
    const/4 p1, 0x7

    if-ne p1, p0, :cond_6

    .line 102
    new-instance p0, Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$OpenProtectEyeModeIntentAction-IA;)V

    return-object p0

    :cond_6
    const/16 p1, 0x8

    if-ne p1, p0, :cond_7

    .line 104
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0

    .line 106
    :cond_7
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0
.end method


# virtual methods
.method public choose(Landroid/content/Intent;)Lcom/android/settings/ai/AidaemonService$IntentAction;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ai/DataFactory;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v1}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v1}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0

    :cond_1
    const-string v0, "key_ai_button_settings"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 75
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v1}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->getPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;

    move-result-object v0

    const-string v2, "key_long_press_up_ai_button_settings"

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 80
    new-instance p0, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;

    invoke-direct {p0, v1}, Lcom/android/settings/ai/AidaemonService$EmptyIntentAction;-><init>(Lcom/android/settings/ai/AidaemonService$EmptyIntentAction-IA;)V

    return-object p0

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ai/AidaemonService$Chooser;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/settings/ai/DataFactory;->record(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/ai/AiSettingsItem;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/android/settings/ai/AidaemonService$Chooser;->chooseInner(Lcom/android/settings/ai/AiSettingsItem;)Lcom/android/settings/ai/AidaemonService$IntentAction;

    move-result-object p0

    return-object p0
.end method
