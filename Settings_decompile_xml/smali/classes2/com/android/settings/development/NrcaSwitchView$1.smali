.class Lcom/android/settings/development/NrcaSwitchView$1;
.super Ljava/lang/Object;
.source "NrcaSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/NrcaSwitchView;->updateNrcaButtonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/NrcaSwitchView;


# direct methods
.method constructor <init>(Lcom/android/settings/development/NrcaSwitchView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/development/NrcaSwitchView$1;->this$0:Lcom/android/settings/development/NrcaSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView$1;->this$0:Lcom/android/settings/development/NrcaSwitchView;

    invoke-virtual {v0}, Lcom/android/settings/development/NrcaSwitchView;->shouldEnableNrcaSwitch()Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/android/settings/development/NrcaSwitchView$1;->this$0:Lcom/android/settings/development/NrcaSwitchView;

    invoke-static {v1}, Lcom/android/settings/development/NrcaSwitchView;->-$$Nest$fgetmSlotId(Lcom/android/settings/development/NrcaSwitchView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/development/NrcaSwitchView;->-$$Nest$misNrCAEnabled(Lcom/android/settings/development/NrcaSwitchView;I)Z

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/settings/development/NrcaSwitchView$1;->this$0:Lcom/android/settings/development/NrcaSwitchView;

    invoke-static {v2}, Lcom/android/settings/development/NrcaSwitchView;->-$$Nest$fgetmHandler(Lcom/android/settings/development/NrcaSwitchView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/development/NrcaSwitchView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/development/NrcaSwitchView$1$1;-><init>(Lcom/android/settings/development/NrcaSwitchView$1;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
