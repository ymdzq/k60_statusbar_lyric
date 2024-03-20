.class public final synthetic Lcom/miui/systemui/controller/RegionController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/systemui/controller/RegionController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/systemui/controller/RegionController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/controller/RegionController$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/systemui/controller/RegionController$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/RegionController$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/systemui/controller/RegionController$1;

    .line 2
    check-cast p1, Lcom/miui/systemui/controller/RegionController$Callback;

    .line 4
    iget-object p0, p0, Lcom/miui/systemui/controller/RegionController$1;->this$0:Lcom/miui/systemui/controller/RegionController;

    .line 6
    iget-object p0, p0, Lcom/miui/systemui/controller/RegionController;->mRegion:Ljava/lang/String;

    .line 8
    invoke-interface {p1, p0}, Lcom/miui/systemui/controller/RegionController$Callback;->onRegionChanged(Ljava/lang/String;)V

    .line 10
    return-void
    .line 13
.end method
