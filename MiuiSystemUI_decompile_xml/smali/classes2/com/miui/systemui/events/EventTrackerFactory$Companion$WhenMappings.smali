.class public final synthetic Lcom/miui/systemui/events/EventTrackerFactory$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/miui/systemui/events/EventModuleTarget;->values()[Lcom/miui/systemui/events/EventModuleTarget;

    .line 2
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    :try_start_0
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :try_start_1
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    :catch_1
    :try_start_2
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->MINIWINDOW:Lcom/miui/systemui/events/EventModuleTarget;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    move-result v1

    .line 32
    const/4 v2, 0x3

    .line 33
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    :catch_2
    :try_start_3
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->ONEHANDED:Lcom/miui/systemui/events/EventModuleTarget;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v1

    .line 41
    const/4 v2, 0x4

    .line 42
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 43
    :catch_3
    :try_start_4
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    move-result v1

    .line 50
    const/4 v2, 0x5

    .line 51
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 52
    :catch_4
    sput-object v0, Lcom/miui/systemui/events/EventTrackerFactory$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 54
    return-void
    .line 56
.end method
