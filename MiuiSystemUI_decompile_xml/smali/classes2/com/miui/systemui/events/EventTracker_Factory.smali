.class public final Lcom/miui/systemui/events/EventTracker_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
