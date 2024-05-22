.class Lmiuix/animation/internal/AnimManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimManager;

.field final synthetic val$info:Lmiuix/animation/internal/TransitionInfo;


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/AnimManager;Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/AnimManager$1;->this$0:Lmiuix/animation/internal/AnimManager;

    .line 2
    iput-object p2, p0, Lmiuix/animation/internal/AnimManager$1;->val$info:Lmiuix/animation/internal/TransitionInfo;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager$1;->this$0:Lmiuix/animation/internal/AnimManager;

    .line 2
    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 4
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager$1;->val$info:Lmiuix/animation/internal/TransitionInfo;

    .line 10
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method
