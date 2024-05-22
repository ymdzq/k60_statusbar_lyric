.class Lmiuix/animation/controller/FolmeVisible$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeVisible;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeVisible;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 10
    invoke-static {p1}, Lmiuix/animation/controller/FolmeVisible;->access$000(Lmiuix/animation/controller/FolmeVisible;)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lmiuix/animation/controller/FolmeVisible$1;->this$0:Lmiuix/animation/controller/FolmeVisible;

    .line 18
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 20
    sget-object p1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 22
    invoke-interface {p0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {p0, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
