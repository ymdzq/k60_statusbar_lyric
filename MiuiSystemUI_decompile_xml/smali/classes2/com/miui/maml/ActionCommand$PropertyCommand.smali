.class public abstract Lcom/miui/maml/ActionCommand$PropertyCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mTargetElement:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetObj:Lcom/miui/maml/util/Variable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 5
    return-void
    .line 7
.end method

.method public static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/util/Variable;

    .line 2
    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 4
    const-string/jumbo p1, "visibility"

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Lcom/miui/maml/ActionCommand$VisibilityProperty;

    .line 20
    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$VisibilityProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 22
    return-object p1

    .line 25
    :cond_0
    const-string p1, "animation"

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    new-instance p1, Lcom/miui/maml/ActionCommand$AnimationProperty;

    .line 38
    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$AnimationProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 40
    return-object p1

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return-object p0
    .line 45
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 28
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "could not find PropertyCommand target, name: "

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 39
    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    const-string v1, "ActionCommand"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 58
    :cond_1
    return-void
    .line 60
.end method

.method public perform()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->doPerform()V

    .line 7
    return-void
    .line 10
.end method
