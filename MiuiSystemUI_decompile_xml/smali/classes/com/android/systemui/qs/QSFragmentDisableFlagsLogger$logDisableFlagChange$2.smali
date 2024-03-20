.class final Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 10
    move-result v1

    .line 13
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 14
    move-result v2

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 18
    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    .line 23
    move-result-wide v2

    .line 26
    long-to-int v2, v2

    .line 27
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong2()J

    .line 28
    move-result-wide v3

    .line 31
    long-to-int p1, v3

    .line 32
    invoke-direct {v1, v2, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 33
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method
