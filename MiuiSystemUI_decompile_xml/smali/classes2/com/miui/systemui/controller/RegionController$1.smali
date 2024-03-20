.class public final Lcom/miui/systemui/controller/RegionController$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/RegionController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/RegionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/RegionController$1;->this$0:Lcom/miui/systemui/controller/RegionController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/controller/RegionController$1;->this$0:Lcom/miui/systemui/controller/RegionController;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p2, "ro.miui.region"

    .line 7
    const-string v0, ""

    .line 9
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 14
    iput-object p2, p1, Lcom/miui/systemui/controller/RegionController;->mRegion:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/miui/systemui/controller/RegionController$1;->this$0:Lcom/miui/systemui/controller/RegionController;

    .line 17
    iget-object p1, p1, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 19
    new-instance p2, Lcom/miui/systemui/controller/RegionController$1$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {p2, p0}, Lcom/miui/systemui/controller/RegionController$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/systemui/controller/RegionController$1;)V

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    return-void
    .line 29
.end method
