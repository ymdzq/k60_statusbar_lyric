.class public final Lcom/android/keyguard/FaceWakeUpTriggersConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final triggerFaceAuthOnWakeUpFrom:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x7f030054    # @array/config_face_auth_wake_up_triggers

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 8
    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([I)Ljava/util/Set;

    .line 12
    move-result-object p1

    .line 15
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-interface {p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 20
    move-result v0

    .line 23
    check-cast p2, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 24
    const-string v1, "face_wake_triggers"

    .line 26
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    const-string/jumbo v0, "|"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {p2, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 41
    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 45
    move-result-object p2

    .line 48
    sget-object v0, Lcom/android/keyguard/FaceWakeUpTriggersConfig$processStringArray$1$1;->INSTANCE:Lcom/android/keyguard/FaceWakeUpTriggersConfig$processStringArray$1$1;

    .line 49
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 51
    move-result-object p2

    .line 54
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 55
    move-result-object v0

    .line 58
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Ljava/util/Set;

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    const/4 p2, 0x0

    .line 66
    :goto_0
    if-nez p2, :cond_1

    .line 67
    goto :goto_1

    .line 69
    :cond_1
    move-object p1, p2

    .line 70
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/keyguard/FaceWakeUpTriggersConfig;->triggerFaceAuthOnWakeUpFrom:Ljava/util/Set;

    .line 71
    invoke-virtual {p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 73
    return-void
    .line 76
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "FaceWakeUpTriggers:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/FaceWakeUpTriggersConfig;->triggerFaceAuthOnWakeUpFrom:Ljava/util/Set;

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Number;

    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result p2

    .line 28
    invoke-static {p2}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    const-string v0, "    "

    .line 33
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    return-void
    .line 39
.end method
