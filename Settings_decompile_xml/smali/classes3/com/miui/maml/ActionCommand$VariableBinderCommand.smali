.class Lcom/miui/maml/ActionCommand$VariableBinderCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lcom/miui/maml/data/VariableBinder;

.field private mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 956
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 949
    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string p1, "name"

    .line 957
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    const-string p1, "command"

    .line 958
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refresh"

    .line 959
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 960
    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    if-eqz v0, :cond_1

    .line 972
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 966
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    return-void
.end method
