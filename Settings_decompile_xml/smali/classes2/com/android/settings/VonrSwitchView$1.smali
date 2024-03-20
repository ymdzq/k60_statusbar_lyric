.class Lcom/android/settings/VonrSwitchView$1;
.super Ljava/lang/Object;
.source "VonrSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VonrSwitchView;->updateVonrButtonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VonrSwitchView;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/settings/VonrSwitchView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    iput p2, p0, Lcom/android/settings/VonrSwitchView$1;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    invoke-virtual {v0}, Lcom/android/settings/VonrSwitchView;->shouldEnableVonrSwitch()Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    iget v2, p0, Lcom/android/settings/VonrSwitchView$1;->val$subId:I

    invoke-static {v1, v2}, Lcom/android/settings/VonrSwitchView;->-$$Nest$misVoNREnabled(Lcom/android/settings/VonrSwitchView;I)Z

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    invoke-static {v2}, Lcom/android/settings/VonrSwitchView;->-$$Nest$fgetmHandler(Lcom/android/settings/VonrSwitchView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/VonrSwitchView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/VonrSwitchView$1$1;-><init>(Lcom/android/settings/VonrSwitchView$1;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
