.class final Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;

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
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const-string p0, "ATTACHED"

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    const-string p0, "DETACHED"

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    const-string p0, "MODIFIED (DETACHED)"

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    const-string p0, "MODIFIED (ATTACHED)"

    .line 49
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    .line 51
    move-result-wide v0

    .line 54
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "(Build "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ") "

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string p0, " {"

    .line 77
    const-string/jumbo v0, "}"

    .line 79
    invoke-static {v2, p0, p1, v0}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    return-object p0
    .line 86
.end method
