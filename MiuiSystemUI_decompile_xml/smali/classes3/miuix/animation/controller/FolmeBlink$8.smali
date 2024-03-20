.class Lmiuix/animation/controller/FolmeBlink$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 5
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 9
    filled-new-array {v0}, [Lmiuix/animation/property/FloatProperty;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 15
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 18
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 20
    invoke-interface {p0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 22
    return-void
    .line 25
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 5
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 9
    filled-new-array {v0}, [Lmiuix/animation/property/FloatProperty;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 15
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 18
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 20
    invoke-interface {p0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 22
    return-void
    .line 25
.end method
