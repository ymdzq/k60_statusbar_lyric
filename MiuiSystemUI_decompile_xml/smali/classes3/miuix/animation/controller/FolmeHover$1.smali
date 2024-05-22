.class Lmiuix/animation/controller/FolmeHover$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeHover;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeHover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

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
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

    .line 10
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 12
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 14
    invoke-interface {p0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
