.class Lcom/miui/maml/ActionCommand$SensorBinderCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SensorCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1550
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1551
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string p1, "command"

    .line 1552
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1553
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p2, "turnOff"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "turnOn"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1561
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_0

    .line 1555
    :cond_0
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_0

    .line 1558
    :cond_1
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    :goto_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .line 1568
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1569
    instance-of v1, v0, Lcom/miui/maml/data/SensorBinder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    check-cast v0, Lcom/miui/maml/data/SensorBinder;

    .line 1573
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 1578
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/data/SensorBinder;->turnOffSensorBinder()V

    goto :goto_0

    .line 1575
    :cond_2
    invoke-virtual {v0}, Lcom/miui/maml/data/SensorBinder;->turnOnSensorBinder()V

    :cond_3
    :goto_0
    return-void
.end method
