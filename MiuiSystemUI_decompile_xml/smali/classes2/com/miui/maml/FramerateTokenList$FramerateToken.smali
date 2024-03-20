.class public Lcom/miui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public getFramerate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 2
    return p0
    .line 4
.end method

.method public requestFramerate(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 8
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 16
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 18
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 22
    invoke-interface {v0, v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    .line 24
    :cond_0
    iput p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 27
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 29
    invoke-static {p0}, Lcom/miui/maml/FramerateTokenList;->access$100(Lcom/miui/maml/FramerateTokenList;)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method
