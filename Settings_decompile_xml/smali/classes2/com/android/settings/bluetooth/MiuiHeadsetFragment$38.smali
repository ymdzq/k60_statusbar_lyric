.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 4919
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4922
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersion(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshStatusUi(Ljava/lang/String;)V

    .line 4923
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mgetAccountInfo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    return-void
.end method
