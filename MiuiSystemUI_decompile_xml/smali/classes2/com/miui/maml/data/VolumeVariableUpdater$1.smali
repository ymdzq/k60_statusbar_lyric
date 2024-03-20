.class Lcom/miui/maml/data/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/VolumeVariableUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater$1;->this$0:Lcom/miui/maml/data/VolumeVariableUpdater;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VolumeVariableUpdater$1;->this$0:Lcom/miui/maml/data/VolumeVariableUpdater;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/data/VolumeVariableUpdater;->access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;

    .line 4
    move-result-object p0

    .line 7
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    return-void
    .line 13
.end method
