.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;
.super Ljava/lang/Object;
.source "MiuiBleAudioSourceInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "broadcast delete button clicked !"

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    .line 266
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete source info id is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p1

    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$mshowHintDialog(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;BII)V

    :cond_0
    return-void
.end method
