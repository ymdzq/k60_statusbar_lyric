.class public Lcom/miui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdaterManager;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public init()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public pause()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public resume()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public tick(J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
