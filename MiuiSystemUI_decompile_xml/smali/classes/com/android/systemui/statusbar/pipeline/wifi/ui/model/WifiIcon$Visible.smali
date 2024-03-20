.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;


# instance fields
.field public final contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

.field public final icon:Lcom/android/systemui/common/shared/model/Icon$Resource;


# direct methods
.method public constructor <init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 5
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 7
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    const-string p1, "icon"

    .line 22
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->toString()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "icon"

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;->description:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method
