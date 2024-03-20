.class Lcom/android/settings/bluetooth/QigsawInstaller$6;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/QigsawInstaller;->backPressed()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/QigsawInstaller;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$6;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancel task successfully, session id :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$6;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmSessionId(Lcom/android/settings/bluetooth/QigsawInstaller;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QigsawInstaller"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$6;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$mquit(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    .line 291
    iget-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$6;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmQigsawInstallerCallback(Lcom/android/settings/bluetooth/QigsawInstaller;)Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$6;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmQigsawInstallerCallback(Lcom/android/settings/bluetooth/QigsawInstaller;)Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;->onQigsawCanceled()V

    :cond_0
    return-void
.end method
