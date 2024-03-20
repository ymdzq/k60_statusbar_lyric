.class public abstract Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BG_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

.field public static final BG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

.field public static final BROADCAST_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

.field public static final BROADCAST_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

.field public static final LONG_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

.field public static final LONG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->BG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

    .line 8
    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->BG_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

    .line 10
    const-wide/16 v1, 0x9c4

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v1

    .line 17
    sput-object v1, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->LONG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

    .line 18
    sput-object v1, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->LONG_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

    .line 20
    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->BROADCAST_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

    .line 22
    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->BROADCAST_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

    .line 24
    return-void
    .line 26
.end method
