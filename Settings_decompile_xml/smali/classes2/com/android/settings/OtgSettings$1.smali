.class Lcom/android/settings/OtgSettings$1;
.super Landroid/os/Handler;
.source "OtgSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OtgSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OtgSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OtgSettings;Landroid/os/Looper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtgSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    .line 46
    iget-object p1, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p1}, Lcom/android/settings/OtgSettings;->-$$Nest$fgetlastEnableState(Lcom/android/settings/OtgSettings;)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isEnable()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/OtgSettings;->-$$Nest$mgetEnableState(Lcom/android/settings/OtgSettings;Z)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p1}, Lcom/android/settings/OtgSettings;->-$$Nest$fgethandler(Lcom/android/settings/OtgSettings;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p1}, Lcom/android/settings/OtgSettings;->-$$Nest$fgethandler(Lcom/android/settings/OtgSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p1}, Lcom/android/settings/OtgSettings;->-$$Nest$fgethandler(Lcom/android/settings/OtgSettings;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/settings/OtgSettings$1;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p0}, Lcom/android/settings/OtgSettings;->-$$Nest$mupdateOtgStatus(Lcom/android/settings/OtgSettings;)V

    :cond_2
    return-void
.end method
