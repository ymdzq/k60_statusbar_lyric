.class public final Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/display/OLEDScreenHelper;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    iget-boolean v0, p1, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 4
    invoke-virtual {p1, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 6
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 9
    sget v0, Lcom/miui/systemui/display/OLEDScreenHelper;->DEFAULT_INTERVAL:I

    .line 11
    const-string v1, "interval"

    .line 13
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 18
    iput v0, p1, Lcom/miui/systemui/display/OLEDScreenHelper;->mInterval:I

    .line 19
    iget-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 21
    const-string v0, "pixels"

    .line 23
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result p2

    .line 29
    iput p2, p1, Lcom/miui/systemui/display/OLEDScreenHelper;->mPixels:I

    .line 30
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mReceiver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 32
    iget-boolean p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/systemui/display/OLEDScreenHelper;->start(Z)V

    .line 36
    return-void
    .line 39
.end method
