.class Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "AssistScreenshotPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final CONTEXT_URI:Landroid/net/Uri;

.field private final URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    const-string p1, "assist_screenshot_enabled"

    .line 124
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    const-string p1, "assist_structure_enabled"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    filled-new-array {v0, p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onSettingChange()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    return-void
.end method
