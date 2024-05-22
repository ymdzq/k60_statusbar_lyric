.class final Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logOnConfigurationChanged$2;

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
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 8
    move-result v0

    .line 11
    const-string/jumbo v1, "undefined"

    .line 12
    const-string v2, "land"

    .line 15
    const-string v3, "port"

    .line 17
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq v0, v5, :cond_1

    .line 21
    if-eq v0, v4, :cond_0

    .line 23
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v3

    .line 29
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 30
    move-result v6

    .line 33
    if-eq v6, v5, :cond_3

    .line 34
    if-eq v6, v4, :cond_2

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move-object v1, v3

    .line 41
    :goto_1
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 42
    move-result v2

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 46
    move-result p1

    .line 49
    const-string v3, "config change: "

    .line 50
    const-string v4, " orientation="

    .line 52
    const-string v5, " (was "

    .line 54
    invoke-static {v3, p0, v4, v0, v5}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "), splitShade="

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, ")"

    .line 74
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
