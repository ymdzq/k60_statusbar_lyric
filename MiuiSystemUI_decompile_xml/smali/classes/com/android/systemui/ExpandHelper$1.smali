.class public final Lcom/android/systemui/ExpandHelper$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ViewScalerHeight"

    .line 2
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 2
    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 6
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 2
    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    float-to-int v0, p2

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 7
    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 10
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 12
    return-void
    .line 14
.end method
