.class final Lcom/miui/systemui/events/EventTracker_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final INSTANCE:Lcom/miui/systemui/events/EventTracker_Factory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/miui/systemui/events/EventTracker_Factory;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/EventTracker_Factory$InstanceHolder;->INSTANCE:Lcom/miui/systemui/events/EventTracker_Factory;

    .line 2
    return-object v0
    .line 4
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/events/EventTracker_Factory;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/events/EventTracker_Factory;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/events/EventTracker_Factory$InstanceHolder;->INSTANCE:Lcom/miui/systemui/events/EventTracker_Factory;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
