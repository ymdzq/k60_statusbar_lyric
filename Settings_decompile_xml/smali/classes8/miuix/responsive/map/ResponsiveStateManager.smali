.class public Lmiuix/responsive/map/ResponsiveStateManager;
.super Ljava/lang/Object;
.source "ResponsiveStateManager.java"


# static fields
.field private static mapState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lmiuix/responsive/map/ResponsiveStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiuix/responsive/map/ResponsiveStateManager;
    .locals 2

    .line 16
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lmiuix/responsive/map/ResponsiveStateManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lmiuix/responsive/map/ResponsiveStateManager;

    invoke-direct {v1}, Lmiuix/responsive/map/ResponsiveStateManager;-><init>()V

    sput-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    return-object v0
.end method


# virtual methods
.method public recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;
    .locals 1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 30
    sget-object p1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/responsive/map/ResponsiveState;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {p1}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 33
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/responsive/map/ResponsiveState;->updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Landroid/content/Context;)V
    .locals 0

    .line 72
    sget-object p0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
