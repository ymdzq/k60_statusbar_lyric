.class public final Lcom/miui/systemui/events/EventTracker_Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/miui/systemui/events/EventTracker_Factory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/systemui/events/EventTracker_Factory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/miui/systemui/events/EventTracker_Factory;

    .line 2
    move-result-object v0

    .line 5
    return-object v0
    .line 6
.end method

.method public static newInstance()Lcom/miui/systemui/events/EventTracker;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/events/EventTracker;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/events/EventTracker;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method


# virtual methods
.method public get()Lcom/miui/systemui/events/EventTracker;
    .locals 0

    .line 2
    invoke-static {}, Lcom/miui/systemui/events/EventTracker_Factory;->newInstance()Lcom/miui/systemui/events/EventTracker;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/systemui/events/EventTracker_Factory;->get()Lcom/miui/systemui/events/EventTracker;

    move-result-object p0

    return-object p0
.end method
