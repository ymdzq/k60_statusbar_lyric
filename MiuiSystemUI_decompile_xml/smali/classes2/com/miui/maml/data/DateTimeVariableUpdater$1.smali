.class synthetic Lcom/miui/maml/data/DateTimeVariableUpdater$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 2
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 9
    :try_start_0
    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 20
    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 31
    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    :catch_2
    :try_start_3
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 42
    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Second:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    :catch_3
    return-void
    .line 53
.end method
