.class final Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;->INSTANCE:Lcom/android/systemui/log/NotificationAlertLogger$logWakeUp$2;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    const-string/jumbo v0, "wakeUp:"

    .line 12
    const-string v1, ", "

    .line 15
    const-string v2, " "

    .line 17
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
