.class Lmiuix/animation/controller/FolmeState$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field final synthetic val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$1;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$1;->val$tag:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$1;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$1;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$1;->val$tag:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState$1;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-static {p0}, Lmiuix/animation/base/AnimConfigLink;->linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {v0, v1, p0}, Lmiuix/animation/controller/FolmeState;->access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 12
    return-void
    .line 15
.end method
