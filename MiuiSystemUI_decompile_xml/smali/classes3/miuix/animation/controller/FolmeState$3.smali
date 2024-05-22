.class Lmiuix/animation/controller/FolmeState$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field final synthetic val$propertyAndValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$3;->val$propertyAndValues:[Ljava/lang/Object;

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
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    invoke-static {v0}, Lmiuix/animation/controller/FolmeState;->access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 8
    iget-object v2, v1, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 10
    invoke-virtual {v1}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 12
    move-result-object v1

    .line 15
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState$3;->val$propertyAndValues:[Ljava/lang/Object;

    .line 16
    invoke-virtual {v2, v1, v0, v3}, Lmiuix/animation/controller/StateManager;->getSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object v1

    .line 21
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState$3;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 22
    invoke-static {p0, v1, v0}, Lmiuix/animation/controller/FolmeState;->access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 24
    return-void
    .line 27
.end method
