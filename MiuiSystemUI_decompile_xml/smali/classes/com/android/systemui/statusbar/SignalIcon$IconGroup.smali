.class public Lcom/android/systemui/statusbar/SignalIcon$IconGroup;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final contentDesc:[I

.field public final discContentDesc:I

.field public final name:Ljava/lang/String;

.field public final qsDiscState:I

.field public final qsIcons:[[I

.field public final qsNullState:I

.field public final sbDiscState:I

.field public final sbIcons:[[I

.field public final sbNullState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbIcons:[[I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsIcons:[[I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->contentDesc:[I

    .line 11
    iput p5, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbNullState:I

    .line 13
    iput p6, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsNullState:I

    .line 15
    iput p7, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbDiscState:I

    .line 17
    iput p8, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsDiscState:I

    .line 19
    iput p9, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->discContentDesc:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "IconGroup("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 9
    const-string v1, ")"

    .line 11
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method
