.class Lcom/android/settings/MiuiMasterClear$13$1;
.super Lcom/miui/tsmclient/service/ICallback$Stub;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear$13;->onWipeFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MiuiMasterClear$13;


# direct methods
.method public static synthetic $r8$lambda$VXxs_6OYaqqe63pLFbEhQpgqy2Y(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mdoMasterClear(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/MiuiMasterClear$13;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$13$1;->this$1:Lcom/android/settings/MiuiMasterClear$13;

    invoke-direct {p0}, Lcom/miui/tsmclient/service/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean car key fail. error code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiMasterClear"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$13$1;->this$1:Lcom/android/settings/MiuiMasterClear$13;

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$13;->this$0:Lcom/android/settings/MiuiMasterClear;

    new-instance p1, Lcom/android/settings/MiuiMasterClear$13$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiMasterClear$13$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "MiuiMasterClear"

    const-string v0, "clean car key data success"

    .line 914
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$13$1;->this$1:Lcom/android/settings/MiuiMasterClear$13;

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$13;->this$0:Lcom/android/settings/MiuiMasterClear;

    new-instance p1, Lcom/android/settings/MiuiMasterClear$13$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiMasterClear$13$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
