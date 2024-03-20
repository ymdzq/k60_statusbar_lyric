.class Lcom/miui/maml/ActionCommand$FolmeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolmeCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field private mConfig:Lcom/miui/maml/data/Expression;

.field private mIsParamsValid:Z

.field private mIsStatesValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mStates:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 2408
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2410
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "params"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 2411
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string/jumbo v0, "states"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 2412
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "config"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 2413
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 2414
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    const-string p1, "command"

    .line 2416
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2417
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p2, "setTo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo p2, "to"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "fromTo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2431
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_1

    .line 2422
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_1

    .line 2419
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_1

    .line 2425
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_1

    .line 2428
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_3
        -0x4b77203b -> :sswitch_2
        0xe7b -> :sswitch_1
        0x684367d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 2461
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    .line 2462
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2464
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    :goto_0
    return-void
.end method

.method private folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 3

    .line 2452
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2453
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 2454
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 2455
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2456
    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 2445
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2446
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    .line 2447
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 2

    .line 2437
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2438
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 2439
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2440
    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 2470
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2471
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2474
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2475
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2486
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2483
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2480
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2477
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    :cond_5
    :goto_0
    return-void
.end method
