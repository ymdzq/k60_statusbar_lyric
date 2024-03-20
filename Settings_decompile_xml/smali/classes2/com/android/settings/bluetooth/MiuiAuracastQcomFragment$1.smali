.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;
.super Ljava/lang/Object;
.source "MiuiAuracastQcomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setAllBroadcastCode(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

.field final synthetic val$assist:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field final synthetic val$gid:I

.field final synthetic val$pw:Ljava/lang/String;

.field final synthetic val$targetId:B


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Ljava/lang/String;Landroid/bluetooth/BleBroadcastAudioScanAssistManager;BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1832
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$pw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$assist:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    iput-byte p4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$targetId:B

    iput p5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$gid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MiuiAuracastQcomFragment"

    :try_start_0
    const-string v1, "AssistManager setAllBroadcastCode wait "

    .line 1836
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x12c

    .line 1837
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssistManager setAllBroadcastCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$pw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$assist:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    iget-byte v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$targetId:B

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$pw:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;->val$gid:I

    invoke-virtual {v3, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1841
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
