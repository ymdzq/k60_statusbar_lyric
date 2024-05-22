.class public final Lcom/miui/systemui/controller/RegionController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mReceiver:Lcom/miui/systemui/controller/RegionController$1;

.field public mRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/miui/systemui/controller/RegionController$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/systemui/controller/RegionController$1;-><init>(Lcom/miui/systemui/controller/RegionController;)V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/controller/RegionController;->mReceiver:Lcom/miui/systemui/controller/RegionController$1;

    .line 17
    const-string v1, "ro.miui.region"

    .line 19
    const-string v2, ""

    .line 21
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/miui/systemui/controller/RegionController;->mRegion:Ljava/lang/String;

    .line 27
    new-instance p0, Landroid/content/IntentFilter;

    .line 29
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    const-string v1, "miui.intent.action.MIUI_REGION_CHANGED"

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 40
    return-void
    .line 43
.end method


# virtual methods
.method public final addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/miui/systemui/controller/RegionController;->mRegion:Ljava/lang/String;

    .line 16
    invoke-interface {p1, p0}, Lcom/miui/systemui/controller/RegionController$Callback;->onRegionChanged(Ljava/lang/String;)V

    .line 18
    return-void
    .line 21
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
