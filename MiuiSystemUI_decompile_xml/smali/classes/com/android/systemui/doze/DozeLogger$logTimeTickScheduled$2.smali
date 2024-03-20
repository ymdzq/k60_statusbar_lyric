.class final Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    sget-object p0, Lcom/android/systemui/doze/DozeLoggerKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v0, Ljava/util/Date;

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    .line 8
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/Date;

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong2()J

    .line 21
    move-result-wide v2

    .line 24
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    const-string p1, "Time tick scheduledAt="

    .line 32
    const-string v1, " triggerAt="

    .line 34
    invoke-static {p1, v0, v1, p0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method
