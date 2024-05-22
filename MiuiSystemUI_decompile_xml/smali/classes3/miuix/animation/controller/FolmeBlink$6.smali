.class Lmiuix/animation/controller/FolmeBlink$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 5
    iget v0, p1, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    .line 7
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p1, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    .line 11
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 23
    iget v2, v0, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    .line 25
    invoke-static {v0}, Lmiuix/animation/controller/FolmeBlink;->access$200(Lmiuix/animation/controller/FolmeBlink;)I

    .line 27
    move-result v0

    .line 30
    if-eq v2, v0, :cond_1

    .line 31
    if-nez p1, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 36
    const/4 p1, 0x0

    .line 38
    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->startBlink([Lmiuix/animation/base/AnimConfig;)V

    .line 41
    return-void

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    .line 45
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeBlink;->notifyState(Z)V

    .line 47
    return-void
    .line 50
.end method
