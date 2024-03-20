.class public final Lcom/android/systemui/complication/ComplicationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mId:Lcom/android/systemui/complication/ComplicationId;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/ComplicationId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationViewModel;->mId:Lcom/android/systemui/complication/ComplicationId;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationViewModel;->mId:Lcom/android/systemui/complication/ComplicationId;

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "="

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const/4 p0, 0x0

    .line 17
    throw p0
    .line 18
.end method
