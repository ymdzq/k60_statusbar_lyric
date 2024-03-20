.class Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "PhoneNumberPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$HyAjYuJaU6Fo5brFPzj-RN8oabc(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->lambda$onRegistered$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRegistered$0()V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered: imsTransportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onRegistered: optimize to remove unhandled runnables"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
