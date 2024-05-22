.class final Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;

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
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    const-string v1, "State changed to "

    .line 16
    const-string v2, " for ID="

    .line 18
    const-string v3, " package="

    .line 20
    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
