.class public final Lcom/miui/systemui/events/EventTrackerFactory$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/events/EventTrackerFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTracker(Lcom/miui/systemui/events/EventModuleTarget;Landroid/content/Context;)Lcom/miui/interfaces/IEventTracker$Tracker;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/systemui/events/EventTrackerFactory$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p1

    .line 7
    aget p0, p0, p1

    .line 8
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_4

    .line 11
    const/4 p1, 0x2

    .line 13
    if-eq p0, p1, :cond_3

    .line 14
    const/4 p1, 0x3

    .line 16
    if-eq p0, p1, :cond_2

    .line 17
    const/4 p1, 0x4

    .line 19
    if-eq p0, p1, :cond_1

    .line 20
    const/4 p1, 0x5

    .line 22
    if-ne p0, p1, :cond_0

    .line 23
    new-instance p0, Lcom/miui/systemui/events/NewNotifTracker;

    .line 25
    invoke-direct {p0, p2}, Lcom/miui/systemui/events/NewNotifTracker;-><init>(Landroid/content/Context;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    throw p0

    .line 36
    :cond_1
    new-instance p0, Lcom/miui/systemui/events/OneHandedTracker;

    .line 37
    invoke-direct {p0, p2}, Lcom/miui/systemui/events/OneHandedTracker;-><init>(Landroid/content/Context;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_2
    new-instance p0, Lcom/miui/systemui/events/MiniWindowTracker;

    .line 43
    invoke-direct {p0, p2}, Lcom/miui/systemui/events/MiniWindowTracker;-><init>(Landroid/content/Context;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_3
    new-instance p0, Lcom/miui/systemui/events/NotifTracker;

    .line 49
    invoke-direct {p0, p2}, Lcom/miui/systemui/events/NotifTracker;-><init>(Landroid/content/Context;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_4
    new-instance p0, Lcom/miui/systemui/events/SysuiTracker;

    .line 55
    invoke-direct {p0, p2}, Lcom/miui/systemui/events/SysuiTracker;-><init>(Landroid/content/Context;)V

    .line 57
    :goto_0
    return-object p0
    .line 60
.end method
