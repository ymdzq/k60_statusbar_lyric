.class Lcom/android/settings/tts/TextToSpeechSettings$TtsSettingsUtteranceProgressListener;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TtsSettingsUtteranceProgressListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings$TtsSettingsUtteranceProgressListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings$TtsSettingsUtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    const-string p0, "TextToSpeechSettings"

    const-string p1, "Error while trying to synthesize sample text"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
