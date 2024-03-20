.class Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetActivityPlugin.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->initCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQigsawCanceled()V
    .locals 2

    const-string v0, "MiuiHeadsetActivityPlugin"

    const-string/jumbo v1, "on Qigsaw install canceled"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onQigsawInstalled(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MiuiHeadsetActivityPlugin"

    const-string/jumbo v1, "onQigsawInstalled"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->-$$Nest$monSuccessfullyLoad(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;)V

    :cond_0
    return-void
.end method
