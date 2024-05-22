.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateContainer;->addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lmiuix/animation/IStateContainer;->enableDefaultAnim(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
