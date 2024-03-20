.class Lmiuix/animation/controller/FolmeState$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field final synthetic val$propertyAndValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$4;->val$propertyAndValues:[Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 7
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$4;->val$propertyAndValues:[Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object v1

    .line 14
    const-wide/16 v2, 0x1

    .line 15
    iput-wide v2, v1, Lmiuix/animation/controller/AnimState;->flags:J

    .line 17
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState$4;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 19
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 25
    return-void
    .line 28
.end method
