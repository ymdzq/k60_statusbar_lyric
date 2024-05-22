.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    const-string p1, "hidden"

    .line 8
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string p0, "icon"

    .line 16
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 1

    .line 1
    const-string p0, "icon"

    .line 2
    const-string v0, "hidden"

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "hidden"

    .line 2
    return-object p0
    .line 4
.end method
