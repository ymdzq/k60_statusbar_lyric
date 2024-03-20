.class Lcom/android/settings/MiuiBandMode$1$1;
.super Ljava/lang/Object;
.source "MiuiBandMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiBandMode$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MiuiBandMode$1;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiBandMode$1;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    iget-object v0, v0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$mhandleBandsSet(Lcom/android/settings/MiuiBandMode;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    iget-object v0, v0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmPhone(Lcom/android/settings/MiuiBandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    iget-object v0, v0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmPhone(Lcom/android/settings/MiuiBandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    iget-object v0, v0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiBandMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$1$1;->this$1:Lcom/android/settings/MiuiBandMode$1;

    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiBandMode;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
