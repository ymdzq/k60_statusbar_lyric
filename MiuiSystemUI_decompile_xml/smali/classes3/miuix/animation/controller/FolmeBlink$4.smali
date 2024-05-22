.class Lmiuix/animation/controller/FolmeBlink$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$4;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$4;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 5
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    sget-object v0, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 9
    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object v0

    .line 14
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$4;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 15
    invoke-static {p0}, Lmiuix/animation/controller/FolmeBlink;->access$100(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;

    .line 17
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p1, v0, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 25
    return-void
    .line 28
.end method
